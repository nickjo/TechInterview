package ch01;

import java.util.ArrayList;

public class Ex2 {
	public static void main(String[] args) {
		String encryptionCode = 
				"MNACBRUTSRVUTSY^]\\[Z &%$#\"!MTSRQPONEMLKJIHGF";
		
		ArrayList<String> decodingCode = new ArrayList<String>();
		int k = 0; // get�� �迭�� index
		int count = 1;
		String resultStr = "";
		
		// K + (countt++);
		
		// ���ڿ��� �迭�� ����
		for(int i=0; i < encryptionCode.length(); i++){
			decodingCode.add(encryptionCode.charAt(i)+"");
		}
		
		for(int i=0; i < decodingCode.size(); i++){
			// get�� ���� index���
			if(count != 1) k = k+count;
			// get�� index�� �迭�� size�̻��϶� �ݺ��� ����
			if(k >= decodingCode.size()) break;
			
			resultStr += decodingCode.get(k);
			count++;
		}
		System.out.println(resultStr);
	}
}
