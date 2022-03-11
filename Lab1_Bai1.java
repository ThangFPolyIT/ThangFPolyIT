/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package LAB1;

import java.util.Scanner;

/**
 *
 * @author ASUS
 */
public class Lab1_Bai1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         Scanner scanner = new Scanner(System.in);
         System.out.print("Họ và tên: ");
         String hoTen=scanner.nextLine();

         System.out.println("Điểm TB: ");
         float diemTB=(float) scanner.nextDouble();

         System.out.printf("Chào %s điểm của bạn là: %f ", hoTen, diemTB);
    }
}