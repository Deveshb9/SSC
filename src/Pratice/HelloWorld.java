package Pratice;

import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter name: ");
        String s1 = "HEllo";
        String s2 = "hello";
        String sent = "Split, this, string, remove, comma";
        String[] sentSplits = sent.split(",");
        String s = sc.nextLine();
        System.out.println("name Length:" + s.length());
        System.out.println("Name to lower:" + s.toLowerCase());
        System.out.println("name to upper:" + s.toUpperCase());
        System.out.println("Char at 6: " + s.charAt(5));
        System.out.println("Surname only: " + s.substring(7));
        System.out.println("Equality: " + s1.equals(s2));
        System.out.println("Equality ignoring cases: " + s1.equalsIgnoreCase(s2));
        System.out.print("Splitting Sent: ");
        for (String element : sentSplits)
            System.out.print(element + " ");
    }
}
