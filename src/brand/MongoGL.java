package brand;
import com.mongodb.BasicDBObject;
import com.mongodb.Block;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class MongoGL {
	public static void main(String[] args) {

	    MongoClient mongoClient = new MongoClient("localhost", 27017);
	    MongoDatabase database = mongoClient.getDatabase("mani");

	    MongoCollection<Document> col = database.getCollection("Empdetails");

	    BasicDBObject q = new BasicDBObject();
	     q.append("$gte", 25);
	     q.append("$lte", 30);
	     BasicDBObject query = new BasicDBObject("age", q); 
	     
	     
	    col.find(query).forEach(new Block<Document>() 
	    {
	        public void apply(final Document document)
	        {
	        	
	            System.out.println(document.toJson());
	            
	            //System.out.println(document);
	        }
	    });       
	    
	    mongoClient.close();
	}
	}


