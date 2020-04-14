package filetest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

public class FileInfo {
	public static void main(String[] args) {
		// fileInfo();
		// fileList();
		// fileCreateDelete();
		fileCopy();
	} 
	
	public static void fileCopy() {
		try {
			File file = new File("D:/FileUpTest/test.txt"); 
			FileInputStream fis = new FileInputStream(file); //원본
			FileOutputStream fos= new FileOutputStream("D:/FileUpTest/test_copy.txt");
			byte[] temp = new byte[100];
			int size = 0;
			while((size=fis.read(temp)) != -1) {
				fos.write(temp);
			}
			fis.close();
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void fileCreateDelete() {
		File file = new File("D:/FileUpTest/test1.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		File folder = new File("D:/FileUpTest/immg");
		folder.mkdir();
		File file2 = new File("D:/FileUpTest/test2.txt");
		//file2.delete();
		
	}
	
	public static void fileList() {
		File file = new File("D:/Dev");
		if(file.isDirectory()) {
			String[] list = file.list();
			for(String temp:list) {
				System.out.println(temp);
			}
		}
	}
	
	public static void fileInfo() {
		File file = new File("D:/FileUpTest/test.txt");
		System.out.println("파일크기:" + file.length());
		System.out.println("파일경로:" + file.getPath());
		System.out.println("파일시간:" + new Date(file.lastModified()));
	}
	
}
