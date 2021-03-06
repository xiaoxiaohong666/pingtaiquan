package test;

import java.io.FileOutputStream;
import java.util.Date;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
/**
 * poi  excel操作
 * @author guoyu
 */
public class ExcelTest {

	public static void main(String[] args) {
		//xlsCreate();
		xlsxCreate();
	}
	
	public static void xlsCreate() {
		Workbook workbook;
		try {
			FileOutputStream fileOut = new FileOutputStream("F:\\test\\a2.xls");
			workbook = new HSSFWorkbook();
			Sheet sheet = workbook.createSheet("测试");
			//设置单元格的值（第一行）
			Row row = sheet.createRow(0);
			//设置行高
			row.setHeight((short) 1000);
			row.createCell(0).setCellValue("日期");
			row.createCell(1).setCellValue("广告主");
			row.createCell(2).setCellValue("订单");
			row.createCell(3).setCellValue("策略");
			row.createCell(4).setCellValue("曝光数");
			row.createCell(5).setCellValue("点击数");
			row.createCell(6).setCellValue("点击率");
			row.createCell(7).setCellValue("消费");
			row.createCell(8).setCellValue(new Date());
			//设置单元格的值（第二行开始）
			for (int i = 0; i < 10; i++) {
				Row row2 = sheet.createRow(i + 1);
				for (int j = 0; j < 10; j++) {
					if (j == 9) {
						row2.createCell(j).setCellValue(new Date());
					} else {
						row2.createCell(j).setCellValue(j);
					}
				}
				//设置日期格式
				CellStyle style = null;
				DataFormat format = workbook.createDataFormat();
				style = workbook.createCellStyle();
				style.setDataFormat(format.getFormat("yyyy-MM-dd HH:mm:ss"));
				row2.getCell(9).setCellStyle(style);
				
				DataFormat format1 = workbook.createDataFormat();
				style = workbook.createCellStyle();
				style.setDataFormat(format1.getFormat("#,##0.00"));
				row2.getCell(6).setCellStyle(style);
			}
			//列宽度自适应
			sheet.autoSizeColumn(9, true);
			//设置某一列列宽
			sheet.setColumnWidth(3, 1500);
			
			//设置字体颜色
			Font font = null;
			CellStyle style = null;
			font = workbook.createFont();
			font.setColor(HSSFColor.RED.index);
			style = workbook.createCellStyle();
			style.setFont(font);
			sheet.getRow(0).getCell(2).setCellStyle(style);
			
			//隐藏列
			sheet.setColumnHidden(3, true);
			
			//隐藏行
			sheet.getRow(6).setZeroHeight(true);
			
			workbook.write(fileOut);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void xlsxCreate() {
		Workbook book;
		try {
			FileOutputStream fileOut = new FileOutputStream("F:\\test\\a2.xlsx");
			book = new XSSFWorkbook();
			//sheet名称
			Sheet sheet = book.createSheet("报表");

			//设置某一列列宽
			sheet.setColumnWidth(3, 1500);
			
			//合并单元格（单元格） 6行6列到8行8列
			sheet.addMergedRegion(new CellRangeAddress(5, 7, 5, 7));
			
			//设置单元格的值（第一行）
			Row row = sheet.createRow(0);
			//设置行高
			row.setHeight((short) 1000);
			row.createCell(0).setCellValue("日期");
			row.createCell(1).setCellValue("广告主");
			row.createCell(2).setCellValue("订单");
			row.createCell(3).setCellValue("策略");
			row.createCell(4).setCellValue("曝光数");
			row.createCell(5).setCellValue("点击数");
			row.createCell(6).setCellValue("点击率");
			row.createCell(7).setCellValue("消费");
			row.createCell(8).setCellValue(new Date());
			//设置单元格的值（第二行开始）
			for (int i = 0; i < 10; i++) {
				Row row2 = sheet.createRow(i + 1);
				for (int j = 0; j < 10; j++) {
					if (j == 9) {
						row2.createCell(j).setCellValue(new Date());
					} else {
						row2.createCell(j).setCellValue(j);
					}
				}
				//设置日期格式
				CellStyle style = null;
				DataFormat format = book.createDataFormat();
				style = book.createCellStyle();
				style.setDataFormat(format.getFormat("yyyy-MM-dd HH:mm:ss"));
				row2.getCell(9).setCellStyle(style);
			}
			Font font = null;
			CellStyle style = null;
			
			//设置字体颜色
			font = book.createFont();
			font.setColor(HSSFColor.RED.index);
			style = book.createCellStyle();
			style.setFont(font);
			sheet.getRow(0).getCell(2).setCellStyle(style);
			
			//隐藏列
			sheet.setColumnHidden(3, true);
			
			//隐藏行
			sheet.getRow(6).setZeroHeight(true);
			book.write(fileOut);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
