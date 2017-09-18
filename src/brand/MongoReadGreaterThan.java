package brand;
import com.mongodb.BasicDBObject;
import com.mongodb.Block;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class MongoReadGreaterThan {
	public static void main(String[] args) {

    MongoClient mongoClient = new MongoClient("localhost", 27017);
    MongoDatabase database = mongoClient.getDatabase("mani");

    MongoCollection<Document> col = database.getCollection("Empdetails");

    BasicDBObject query = new BasicDBObject("age", 
            new BasicDBObject("$gte", 35));
   
    col.find(query).forEach(new Block<Document>() {
        
        public void apply(final Document document) {
            System.out.println(document.toJson());
        }
    });       
    
    mongoClient.close();
}
}
