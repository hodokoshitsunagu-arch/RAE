import jadx.api.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;
public class DecompileSelected {
 public static void main(String[] args) throws Exception {
  JadxArgs config=new JadxArgs(); config.setInputFile(new File(args[0])); config.setThreadsCount(4);config.setSkipResources(true);
  Set<String> names=new HashSet<>(Files.readAllLines(Path.of(args[1])));
  Path out=Path.of(args[2]); Files.createDirectories(out);
  try(JadxDecompiler dec=new JadxDecompiler(config)){
   dec.load();
   for(JavaClass cls:dec.getClasses()){
    if(names.contains(cls.getFullName())){
     Path dest=out.resolve(cls.getFullName().replace('.','/')+".java");Files.createDirectories(dest.getParent());
     try {Files.writeString(dest,cls.getCode());System.out.println("OK "+cls.getFullName());}catch(Throwable ex){System.out.println("FAIL "+cls.getFullName()+" "+ex);}
    }
   }
  }
 }
}
