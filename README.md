# jflex-to-cup
A starting place for creating a parser with jflex and CUP

## Installation
You can download the jflex compiler [here](http://www.jflex.de/download.html), and you can download the CUP parser [here](http://www2.cs.tum.edu/projects/cup/). You probably won't need to install jflex with Maven (as you only need to compile
the file during development), but you'll need the following to use CUP:

```xml
<!-- https://mvnrepository.com/artifact/com.github.vbmacher/java-cup -->
<dependency>
    <groupId>com.github.vbmacher</groupId>
    <artifactId>java-cup</artifactId>
    <version>11b</version>
</dependency>
```

## Compilation
To compile your jflex file, navigate to `jflex-1.7.0/bin` (in Finder) and then double click on the file named jflex. Here, you just type in the filepaths it asks for, and it will compile your file for you.

To compile your CUP file, navigate to the directory where your .cup file is stored (in the terminal), ensure `java-cup-11b.jar` is in the classpath, and run a variation of `java -jar java-cup-11b.jar -interface -parser <new-file-name> <file-name>.cup`.
