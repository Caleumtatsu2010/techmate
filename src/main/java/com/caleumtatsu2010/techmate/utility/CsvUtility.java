//package com.longnh02.techmate.utility;
//
//import org.apache.commons.csv.*;
//import java.io.*;
//import java.util.*;
//
//public class CsvUtility {
//
//    Map<String, String> AUTHOR_BOOK_MAP = new HashMap<>() {
//        {
//            put("Dan Simmons", "Hyperion");
//            put("Douglas Adams", "The Hitchhiker's Guide to the Galaxy");
//        }
//    });
//    String[] HEADERS = { "author", "title"};
//
//    public void givenCSVFile_whenRead_thenContentsAsExpected() throws IOException {
//        Reader in = new FileReader("book.csv");
//        Iterable<CSVRecord> records = CSVFormat.DEFAULT
//                .withHeader(HEADERS)
//                .withFirstRecordAsHeader()
//                .parse(in);
//        for (CSVRecord record : records) {
//            String author = record.get("author");
//            String title = record.get("title");
//            assertEquals(AUTHOR_BOOK_MAP.get(author), title);
//        }
//    }
//
//    public void createCSVFile() throws IOException {
//        FileWriter out = new FileWriter("book_new.csv");
//        try (CSVPrinter.withHeader(HEADERS))) {
//            AUTHOR_BOOK_MAP.forEach((author, title) -> {
//                printer.printRecord(author, title);
//            });
//        }
//    }
//}
