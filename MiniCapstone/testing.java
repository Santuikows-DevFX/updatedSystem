import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Scanner;

public class testing {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        long dayToday = System.currentTimeMillis();

        Date dateToday = new Date(dayToday);


        System.out.print("Enter product exp in this format (YYYY-MM-DD): ");
        String productExp = sc.nextLine();

        Date exp = Date.valueOf(productExp);

        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd"); // same pattern with the db

        formatDate.format(exp);

        // System.out.println(formatDate.format(dateToday).compareTo(productExp));

        if(formatDate.format(dateToday).compareTo(productExp) > 0) { 

            System.out.println("CANNOT ADD ALREADY PAST EXPIRY");

        }else { 

            System.out.println("RJ COCK");
            System.out.println(formatDate.format(dateToday).compareTo(productExp));

        }

    }
    
}
