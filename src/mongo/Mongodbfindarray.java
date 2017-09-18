package mongo;
import java.util.ArrayList;
import java.util.List;
 
import org.bson.Document;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class Mongodbfindarray 
{

	public static void main(String[] args) {
		 
		 MongoClient mongoClient = new MongoClient("localhost", 27017);
		 
	        
	        DB db = mongoClient.getDB("mani");
	 
	        
	        DBCollection coll = db.getCollection("insertion");
	 
	       
	        DBCursor cr = coll.find();
	        
	        
	 
	       // System.out.println(cr);
	        
	        try {
	            while (cr.hasNext()) {
	                System.out.println(cr.next());
	            }
	       } finally {
	            cr.close();
	            
	            System.out.println("----Collection Show successfully Document in MONGODB is avalable---- ");
	        }
	    }
}
