/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LAB1;

import java.util.Scanner;

/**
 *
 * @author ASUS
 */
public class Lab1_Bai2 {
    public static void main(String[] args) {
        System.out.println("Chương Trình Tính Chu Vi HCN");
        Scanner sc = new Scanner(System.in);
        double cv, cd, cr, dt;
        
        System.out.println("Nhập chiều dài: ");
        cd = sc.nextDouble();
        
        System.out.println("Nhập chiệu rộng: ");
        cr = sc.nextDouble();
        
        cv=2*(cd + cd);
        dt = cd * cr;
        
        System.out.println("Chu vi: "+ cv);
        System.out.println("Diện tích: "+ dt);
        double min = Math.min(cd, cr);
        System.out.println("Cạnh nhỏ: " +min);
    }
}
