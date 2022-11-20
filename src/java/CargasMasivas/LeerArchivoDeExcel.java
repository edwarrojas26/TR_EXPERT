/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LeerArchivoDeExcel;

import ModeloDAO.UsuarioDAO;
import ModeloVO.UsuarioVO;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author DANIEL SIERRA
 */
public class LeerArchivoDeExcel {

    public LeerArchivoDeExcel(File fileName) {

        List cellData = new ArrayList();

        try {

            FileInputStream fileInputStream = new FileInputStream(fileName);
            XSSFWorkbook workBook = new XSSFWorkbook(fileInputStream);

            XSSFSheet hssfSheet = workBook.getSheetAt(0);
            Iterator rowIterator = hssfSheet.rowIterator();

            while (rowIterator.hasNext()) {

                XSSFRow hssfRow = (XSSFRow) rowIterator.next();

                Iterator iterator = hssfRow.cellIterator();
                List cellTemp = new ArrayList();

                while (iterator.hasNext()) {

                    XSSFCell hssfCell = (XSSFCell) iterator.next();
                    cellTemp.add(hssfCell);

                }

                cellData.add(cellTemp);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        obtener(cellData);

    }

    private void obtener(List cellDataList) {

        for (int i = 0; i < cellDataList.size(); i++) {

            List cellTempList = (List) cellDataList.get(i);

            for (int j = 0; j < cellTempList.size(); j++) {

                XSSFCell hssfCell = (XSSFCell) cellTempList.get(j);

                String stringCellValue = hssfCell.toString();

                // System.out.println(stringCellValue + " ");
                System.out.println(cellTempList.get(j));
                System.out.println(cellTempList.get(j + 1));
                System.out.println(cellTempList.get(j + 2));
                System.out.println(cellTempList.get(j + 3));
                System.out.println(cellTempList.get(j + 4));
                System.out.println(cellTempList.get(j + 5));
                System.out.println(cellTempList.get(j + 6));
                System.out.println(cellTempList.get(j + 7));
                System.out.println(cellTempList.get(j + 8));
                System.out.println(cellTempList.get(j + 9));
                System.out.println(cellTempList.get(j + 10));
                System.out.println(cellTempList.get(j + 11));
                System.out.println(cellTempList.get(j + 12));
                System.out.println(cellTempList.get(j + 13));
                System.out.println(cellTempList.get(j + 14));
                System.out.println(cellTempList.get(j + 15));

                UsuarioVO usuVo = new UsuarioVO(cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString(), cellTempList.get(j).toString());
                UsuarioDAO usuDao = new UsuarioDAO(usuVo);

                if (usuDao.agregarRegistro()) {

                    System.out.println("Registro exitoso");

                }
                
                else {

                    System.out.println("Registro fallido");

                }

            }

        }

    }

    public static void main(String[] args) {

        File f = new File("C:/Users/Sena/Downloads/prueba.xlsx");

        if (f.exists()) {

            LeerArchivoDeExcel obj = new LeerArchivoDeExcel(f);

        }

    }

}