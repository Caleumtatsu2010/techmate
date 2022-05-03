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

public class AstraToken extends Csv {

    @Override
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

    @Override
    public void printCsv(CSVParser csvParser) {
        for (CSVRecord csvRecord : csvParser) {
            // Accessing values by the names assigned to each column
            String id = csvRecord.get("Client Id");
            String clientSecret = csvRecord.get("Client Secret");
            String role = csvRecord.get("Role");
            String token = csvRecord.get("Token");

            System.out.println("Record No: " + csvRecord.getRecordNumber());
            System.out.println("---------------");
            System.out.println("Client Id : " + id);
            System.out.println("Client Secret : " + clientSecret);
            System.out.println("Role : " + role);
            System.out.println("Token : " + token);
            System.out.println("---------------\n");
        }
    }

    @Override
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

    @Override
    public void writeToText(CSVParser csvParser, String textFilePath) {

    }

    public static void main(String[] args) throws IOException {
//        printTokenCsv(readCsv(Path.AstraTokenCsv));
//        writeToProperties(readCsv(Path.astraTokenCsv),Path.astraTokenProperties);
    }

}
