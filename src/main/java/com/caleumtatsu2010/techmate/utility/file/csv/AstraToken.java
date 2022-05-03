package com.caleumtatsu2010.techmate.utility.file.csv;

import com.caleumtatsu2010.techmate.utility.file.Path;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;

import java.util.*;

public class AstraToken{


    public CSVParser readCsv(String filepath){
        try {
            Reader reader = Files.newBufferedReader(Paths.get(filepath));
            CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT
                    .withHeader("Client Id", "Client Secret", "Role", "Token")
                    .withIgnoreHeaderCase()
                    .withTrim());
            return csvParser;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public void printCsv(CSVParser csvParser) {
        for (CSVRecord csvRecord : csvParser) {
            // Accessing values by the names assigned to each column
            System.out.println("Record No: " + csvRecord.getRecordNumber());
            System.out.println("---------------");
            System.out.println("Client Id : " + csvRecord.get("Client Id"));
            System.out.println("Client Secret : " + csvRecord.get("Client Secret"));
            System.out.println("Role : " + csvRecord.get("Role"));
            System.out.println("Token : " + csvRecord.get("Token"));
            System.out.println("---------------\n");
        }
    }

    public void writeToProperties(CSVParser csvParser, String propertiesFilePath) {
        try(OutputStream outputStream = new FileOutputStream(propertiesFilePath)){
            Properties properties = new Properties();
            int i = 0;
            for (CSVRecord csvRecord : csvParser) {
                if (i == 1) {
                    properties.setProperty("clientId", csvRecord.get("Client Id"));
                    properties.setProperty("clientSecret", csvRecord.get("Client Secret"));
                    properties.setProperty("role", csvRecord.get("Role"));
                    properties.setProperty("token", csvRecord.get("Token"));
                    properties.store(outputStream, null);
                }
                i++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) throws IOException {
//        printTokenCsv(readCsv(Path.AstraTokenCsv));
//        writeToProperties(readCsv(Path.astraTokenCsv),Path.astraTokenProperties);
    }

}
