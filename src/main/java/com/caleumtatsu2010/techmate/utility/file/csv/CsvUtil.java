package com.caleumtatsu2010.techmate.utility.file.csv;



import com.opencsv.CSVReader;

import java.io.FileReader;
import java.util.List;

public class CsvUtil {

    public static List<String[]> read(String path) {
        try (CSVReader reader = new CSVReader(new FileReader(path))) {
            List<String[]> r = reader.readAll();
            return r;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
