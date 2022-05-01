package com.caleumtatsu2010.techmate.utility.file;

import java.io.File;

public class FindFiles {

    public static File[] findPath(String folderpath, String startwith, String endwith) {
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

//    public static void main(String[] args) {
//       File[] files =  findPath("\\src\\main\\java\\com\\caleumtatsu2010\\techmate\\properties\\", "conn", ".properties");
//        for (int i = 0; i < files.length; i++) {
//            System.out.println(files[i].getName());
//        }
//    }
}
