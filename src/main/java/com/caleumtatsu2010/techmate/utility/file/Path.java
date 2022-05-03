package com.caleumtatsu2010.techmate.utility.file;

public class Path {
    //project dir
    private static String dir = System.getProperty("user.dir");
    //properties connection infor file  path
    public static String mysqlConnectProperties = dir + "\\src\\main\\java\\com\\caleumtatsu2010\\techmate\\properties\\mysqlConnect.properties";


    //astra secure connect bundle zip path
    public static String secureConnectTechmate = dir + "\\resources\\token\\secure-connect-techmate.zip";

    //Astra database connect token csv file path
    public static String astraTokenCsv = dir + "\\resources\\token\\GeneratedToken.csv";

    //Astra token properties file path
    public static String astraTokenProperties = dir + "\\src\\main\\java\\com\\caleumtatsu2010\\techmate\\properties\\astraToken.properties";

    public static void main(String[] args) {
        System.out.println(secureConnectTechmate);
    }
}
