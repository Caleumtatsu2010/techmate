package com.caleumtatsu2010.data.excel;

import com.caleumtatsu2010.techmate.models.product.Product;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReadExcelFile {

    public static List<Product> readExcel(String excelFilePath) throws IOException {
        List<Product> listBooks = new ArrayList<>();

        // Get file
        InputStream inputStream = new FileInputStream(new File(excelFilePath));

        // Get workbook
        Workbook workbook = getWorkbook(inputStream, excelFilePath);

        // Get sheet
        Sheet sheet = workbook.getSheetAt(0);

        // Get all rows
        Iterator<Row> iterator = sheet.iterator();
        while (iterator.hasNext()) {
            Row nextRow = iterator.next();
            if (nextRow.getRowNum() == 0) {
                // Ignore header
                continue;
            }

            // Get all cells
            Iterator<Cell> cellIterator = nextRow.cellIterator();

            // Read cells and set value for book object
            Product product = new Product();
            while (cellIterator.hasNext()) {
                //Read cell
                Cell cell = cellIterator.next();
                Object cellValue = getCellValue(cell);
                if (cellValue == null || cellValue.toString().isEmpty()) {
                    continue;
                }
                // Set value for book object
                int columnIndex = cell.getColumnIndex();
                switch (columnIndex) {
                    case 1:
                        product.setImage(getCellValue(cell).toString());
                        break;
                    case 2:
                        product.setName(getCellValue(cell).toString());
                        break;
                    case 4:
                        String str = getCellValue(cell).toString().substring(0,3);
                        product.setStar(Double.parseDouble(str));
                        break;
                    case 5:
                        String str1 = getCellValue(cell).toString();
                        String rating = null;
                        if(str1.length() > 3){
                            String parts[] = str1.split(",");
                            rating = parts[0] + parts[1];
                        }
                        if (str1.length() <=3){
                           rating = str1;
                        }
                        product.setRatings(Integer.parseInt(rating));
                        break;
                    case 7:
                        String str7 = getCellValue(cell).toString().substring(1);
                        product.setPrice(Double.parseDouble(str7.trim()));
                        product.setCurrency("$");
                    default:
                        break;
                }
            }
            listBooks.add(product);
        }
        workbook.close();
        inputStream.close();
        return listBooks;
    }

    // Get Workbook
    private static Workbook getWorkbook(InputStream inputStream, String excelFilePath) throws IOException {
        Workbook workbook = null;
        if (excelFilePath.endsWith("xlsx")) {
            workbook = new XSSFWorkbook(inputStream);
        } else if (excelFilePath.endsWith("xls")) {
            workbook = new HSSFWorkbook(inputStream);
        } else {
            throw new IllegalArgumentException("The specified file is not Excel file");
        }
        return workbook;
    }

    // Get cell value
    private static Object getCellValue(Cell cell) {
        CellType cellType = cell.getCellType();
        Object cellValue = null;
        switch (cellType) {
            case BOOLEAN:
                cellValue = cell.getBooleanCellValue();
                break;
            case FORMULA:
                Workbook workbook = cell.getSheet().getWorkbook();
                FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
                cellValue = evaluator.evaluate(cell).getNumberValue();
                break;
            case NUMERIC:
                cellValue = cell.getNumericCellValue();
                break;
            case STRING:
                cellValue = cell.getStringCellValue();
                break;
            case _NONE:
            case BLANK:
            case ERROR:
                break;
            default:
                break;
        }
        return cellValue;
    }

    public static void main(String[] args) throws IOException {
        final String excelFilePath = "D:\\stuff\\Database\\amazone-clone-data\\Electronics\\Accessories & Supplies\\Audio & Video Accessories\\3D Glasses.xlsx";
        final List<Product> products = readExcel(excelFilePath);
        for (Product product : products) {
            System.out.println(product.toString());
        }
    }
}
