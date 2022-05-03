package com.caleumtatsu2010.techmate.utility.file.csv;

import org.apache.commons.csv.CSVParser;

public abstract class Csv {

    public abstract CSVParser readCsv(String filepath);

    public abstract void writeToProperties(CSVParser csvParser, String propertiesFilePath);

    public abstract void printCsv(CSVParser csvParser);

    public abstract void writeToText(CSVParser csvParser, String textFilePath);

}
