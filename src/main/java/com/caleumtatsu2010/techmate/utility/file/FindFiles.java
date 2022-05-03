package com.caleumtatsu2010.techmate.utility.file;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FindFiles {

    public static File[] findName(String folderpath, String startwith, String endwith) {
        File dir = null;
        File[] files = null;
        try {
            dir = new File(System.getProperty("user.dir") + folderpath);
            files = dir.listFiles((dir1, name) -> name.startsWith(startwith) && name.endsWith(endwith));
        }catch (Exception e) {
            System.err.println(e.getMessage());
        }
       return files;
    }

    // If a single file name, not full path, the file refer to
    // System.getProperty("user.dir") + file
    public static void printFilePath(File file) {
        // print File = print file.getPath()
        System.out.printf("%-25s : %s%n", "file.getPath()", file.getPath());
        System.out.printf("%-25s : %s%n", "file.getAbsolutePath()",
                file.getAbsolutePath());
        try {
            System.out.printf("%-25s : %s%n", "file.getCanonicalPath()",
                    file.getCanonicalPath());
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.printf("%-25s : %s%n", "Parent Path", getParentPath(file));
    }

    // if unable to get parent, try substring to get the parent folder.
    private static String getParentPath(File file) {
        if (file.getParent() == null) {
            String absolutePath = file.getAbsolutePath();
            return absolutePath.substring(0,
                    absolutePath.lastIndexOf(File.separator));
        } else {
            return file.getParent();
        }
    }

    public static void findPath(String filename) {
        File file2 = new File(filename);
        printFilePath(file2);
    }

    public static void main(String[] args) {
//       File[] files =  findName("\\src\\main\\java\\com\\caleumtatsu2010\\techmate\\properties\\", "conn", ".properties");
//        for (int i = 0; i < files.length; i++) {
//            System.out.println(files[i].getName());
//        }
        findPath("mysqlConnect.properties");
    }
}
