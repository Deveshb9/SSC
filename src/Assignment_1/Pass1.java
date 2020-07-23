package Assignment_1;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Pass1 {
    public static void main(String[] args) {
        ArrayList<String> listOfLines = new ArrayList<>();
        try {
            File myObj = new File("files\\program1.txt");
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                listOfLines.add(myReader.nextLine());
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        for (String str : listOfLines) {
            System.out.println(str);
        }
        for (String str : listOfLines) {
            if(str.contains("START"))
            {
                System.out.println(str.substring(6));
                break;
            }
        }
    }
}
