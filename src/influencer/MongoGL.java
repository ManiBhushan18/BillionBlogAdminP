package influencer;
import com.mongodb.BasicDBObject;
import com.mongodb.Block;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class MongoGL {
	public static void main(String[] args) {

	    MongoClient mongoClient = new MongoClient("localhost", 27017);
	    MongoDatabase database = mongoClient.getDatabase("bb");

	    MongoCollection<Document> col = database.getCollection("users");

	    BasicDBObject q = new BasicDBObject();
	     q.append("$gte", 1);
	     q.append("$lte", 100);
	     BasicDBObject query = new BasicDBObject("__v", q); 
	     
	     
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


