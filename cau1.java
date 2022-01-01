import java.util.Scanner;

public class cau1 {
    public static void main(String[] args) {
        System.out.println("Nhap so phan tu trong mang:");
        Scanner sc = new Scanner(System.in);
        int m = sc.nextInt();
        int[] n = new int[m];
        for (int i = 0; i < m; i++) {
            System.out.println("Nhap phan tu thu " + i + ":");
            n[i] = sc.nextInt();
        }
        System.out.println("Cac phan tu trong mang la:");
        for (int i : n) {
            System.out.println(i);
        }
        int max = n[0];
        int min = n[0];
        for (int a : n) {
            if (max < a)
                max = a;
            if (min > a)
                min = a;
        }
        System.out.println("So lon nhat la:" + max);
        System.out.println("So nho nhat la:" + min);
}
    }

