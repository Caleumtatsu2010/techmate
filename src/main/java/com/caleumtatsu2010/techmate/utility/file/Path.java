package com.caleumtatsu2010.techmate.utility.file;

public class Path {
    //project dir
    private static String dir = System.getProperty("user.dir"); //D:\stuff\JAVA\techmate

    private static String resourceDir = "D:\\stuff\\JAVA\\techmate\\src\\main\\resources";
    //properties connection infor file  path
    public static String mysqlConnectProperties = "properties.mysqlConnect";

    public static String mysqlConnectPropertiesMigrate = "properties.techmate_migrate";

    //astra secure connect bundle zip path
    public static String secureConnectTechmate = resourceDir + "\\secure-connect-techmate.zip";

    //Astra database connect token csv file path
    public static String astraTokenCsv = resourceDir + "\\token\\GeneratedToken.csv";

    //Astra token properties file path
    public static String astraTokenProperties = "properties.astraToken";

    public static void main(String[] args) {
        System.out.println(mysqlConnectProperties);
    }
}
