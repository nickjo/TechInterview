package ch01;

public class BubbleSort {
	public static int[] sort(int[] a){
		/*
		 * ���� ��Ʈ: �迭�� �ڿ������� ���� ó�� ��Ҹ� ���� ��ĵ�ϴ� ������ �� ����� ��Ұ��谡
		 * �ݴ��� ������ �ٲ��ִ� ��
		 * */
		int n = a.length;
		
		for(int i=0; i<n-1; i++){
			for(int j=n-1; j>i; j--){
				if(a[j-1] > a[j]){
					int temp = a[j];
					a[j] = a[j-1];
					a[j-1] = temp;
				}
			}
		}
		return a;
	}
}
