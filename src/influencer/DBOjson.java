package mongo;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.net.URL;

import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.util.JSON;
import java.io.FileNotFoundException;
import java.io.FileReader;
public class DBOjson 
{
public static void main(String args[])
	
    {
		
		 try
	        {
	        	Mongo mongo = new Mongo("localhost", 27017);
	        	DB db = mongo.getDB("hospital");
	        	
	              //System.out.println("Database created"+db);
	              
	        	  DBCollection collection = db.getCollection("brand");
	        	  
	        	  JSONParser parser = new JSONParser();
	        	  
	        	  try
	        	  {
	        		  Object object =  parser.parse(new FileReader("maniTwitter.jsom"));
	        		  
	        		  
	        		  System.out.println(object);
	        		  
	        		  
	        		  JSONObject jsonObject=(JSONObject)object;
	        		  
	        		 
	        		  
	        		  Object om=com.mongodb.util.JSON.parse(jsonObject.toString());
	        		  DBObject doc=(DBObject)om;
	        		  
	        		  System.out.println(doc);
	        		  
	        		  DBCursor cr = collection.find();
	        		  while (cr.hasNext()) {
	        			  //collection.remove(cr.next());
	        		
	        		  
	        		  
	        		  
	        		  collection.remove(doc);
	        		  
	        		  
	        		  
	        		  
	        		  //collection.insert(doc);
	        		  
	        		  }
	        		  
	        		  System.out.println("Data inserted successfullay");
	        		  
	        	  
	        }
	        catch(FileNotFoundException fe)
	        {
	            fe.printStackTrace();
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }
	    }
		 finally
		 {
			 
		 }
	}
}
	

