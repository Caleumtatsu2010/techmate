package com.caleumtatsu2010.techmate.utility.file;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class ListFiles {

    public static void listFilesForFolder(String folderPath){
        try {
            Files.walk(Paths.get(folderPath))
                    .filter(Files::isRegularFile)
                    .forEach(System.out::println);
        }catch (IOException ex){
            ex.printStackTrace();
        }

    }

    public static void main(String[] args) {
        listFilesForFolder("D:\\stuff\\Database\\amazone-clone-data\\Electronics");
    }
}
