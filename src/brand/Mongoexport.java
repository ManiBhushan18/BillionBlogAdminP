package brand;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Mongoexport 
{
	public static void main(String args[]) throws InterruptedException
	{
		

	Runtime runtime = Runtime.getRuntime();
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
    Date date = new Date();
    String xyz=dateFormat.format(date);
    String query="mongoexport --host  -d SMPP -c UserMessages --csv         --fieldFile /root/Documents/UserMessagesFileds.txt -o"+" "+xyz+".csv";
    try {
      Process process=runtime.exec(query);
      System.out.println(query);
      System.out.println(xyz);
      if( null!=process  && process.waitFor() == 0 &&process.exitValue()== 0 )
      {
         System.out.println("Command executed sucessfully"); 
      }
      else{

      }
      return;
    } catch (IOException e) {
        e.printStackTrace();
        return;
    }
	
	
	}
}
