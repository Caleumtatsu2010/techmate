package com.caleumtatsu2010.techmate.utility.file.csv;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;

import java.util.*;

public class AstraTokenCsv {
    private static final String AstraTokenCsv = "D:\\stuff\\JAVA\\techmate\\resources\\token\\GeneratedToken.csv";

    public static CSVParser readCsv(String filepath){
        try {
            Reader reader = Files.newBufferedReader(Paths.get(filepath));
//            CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT
//                    .withFirstRecordAsHeader()
//                    .withIgnoreHeaderCase()
//                    .withTrim());
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

    public static void printTokenCsv(CSVParser csvParser) {
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

    public static void writeToProperties(CSVParser csvParser) {
        for (CSVRecord csvRecord : csvParser) {
            // Accessing values by the names assigned to each column
            String id = csvRecord.get("Client Id");
            String clientSecret = csvRecord.get("Client Secret");
            String role = csvRecord.get("Role");
            String token = csvRecord.get("Token");
            List<List<String>> list = new ArrayList<>();

        }
    }

    public static void main(String[] args) throws IOException {
        printTokenCsv(readCsv(AstraTokenCsv));
    }
}
