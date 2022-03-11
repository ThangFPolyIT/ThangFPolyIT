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
public class Lab1_Bai3 {
     public static void main(String[] args) {
        System.out.println("Thể tích khối lập phương");
        Scanner sc = new Scanner(System.in);
        
        double canh, theTich, theTich01;
        System.out.println("Hãy nhập vào cạnh");
        canh =sc.nextDouble();
        theTich = canh * canh * canh;
        theTich01 = Math.pow(canh, 3);
        System.out.println("Thể tích: "+ theTich);
        System.out.println("Thể tích 1: "+ theTich01);
     }
}
