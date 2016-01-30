package ch01;

import java.util.Random;

public class EX10_3_intArray {
	private int[] intArray;
	Random r = new Random();
	
	static int DEFAULT_ARRAY_SIZE = 12;
	
	public EX10_3_intArray(){
		this(DEFAULT_ARRAY_SIZE);
	}
	
	public EX10_3_intArray(int size){
		// Array size �ʱ�ȭ
		intArray = new int[size];
		
		// �迭�� ������ ���� �����Ѵ�.
		insertRandomNumber(size);
	}
	
	// ������ ���� �迭�� ���� ��Ų��.
	private void insertRandomNumber(int n){
		// insert random number
		for(int i=0; i<intArray.length; i++){
			// 0 ~ n*2 ������ ���� ����Ѵ�.
			intArray[i] = r.nextInt(n*2);
			
			// �ߺ� ����
			for(int j=0; j<i; j++){
				if(intArray[i] == intArray[j]){
					i = i-1;
					break;
				}
			}
		}
	}
	
	// ���ĵ� �迭�� ������ Ƚ����ŭ ȸ�� ��Ų��.
	public void rotationArray() throws Exception{
		// ȸ�� ��ų ������ ������ ���Ѵ�.
		int rotationNum = r.nextInt(intArray.length*2)+1;
		System.out.println("ȸ����ų Ƚ��: " + rotationNum);
		
		// ȸ�� ��Ų �迭�� �ӽ� �����Ѵ�.
		int[] tempRotationArray = new int[intArray.length];
		
		// ȸ�� ��Ű�� ���� ������ array�� size ������ �� ��ŭ �̵��ȴ�.
		int rotationValue = rotationNum % (intArray.length);
		
		// �������� 0�̸� ȸ�� ��ų �ʿ䰡 ����
		if(rotationValue != 0){
			for(int i=0; i < intArray.length; i++){
				if(i+rotationValue > intArray.length-1){
					tempRotationArray[i+rotationValue-intArray.length] = intArray[i];
				}else if(i+rotationValue < intArray.length-1){
					tempRotationArray[i+rotationValue] = intArray[i];
				}else if(i+rotationValue == intArray.length-1){
					tempRotationArray[0] = intArray[intArray.length-1];
					tempRotationArray[intArray.length-1] = intArray[(intArray.length-1)-rotationValue];
				}
			}
			intArray = tempRotationArray;
		}
	}
	
	// �Է��� ���� �ε����� ��ȯ
	public int searchNumber(int inputNum){
		for(int i=0; i < intArray.length; i++){
			if(inputNum == intArray[i]){
				return i;
			}
		}
		return -1;
	}
	
	// �迭 ���
	public String toString(){
		String str = "Array: [";
		
		for(int i=0; i<intArray.length; i++){
			str += intArray[i]+"";
			
			if(i < intArray.length-1){
				str += ", ";
				if(i != 0 && i % 100 == 0){
					str += "\n\t";
				}
			}
		}
		return str += "]";
	}
	
	// ���� ��Ʈ
	public void bubbleSort(){
		intArray = BubbleSort.sort(intArray);
	}
}
