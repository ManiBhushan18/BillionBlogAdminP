package brand;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.eq;

public class MongoModify
{
	public static void main(String[] args) {

        MongoClient mongoClient = new MongoClient("localhost", 27017);
        MongoDatabase database = mongoClient.getDatabase("mani");
        MongoCollection<Document> col = database.getCollection("highscores");   
        
        
        col.deleteOne(eq("name", "mohan"));    
        col.updateOne(new Document("name", "sonam"),  
                new Document("$set", new Document("score", 420)));
        
        
        
        System.out.println("Document updated done.....");

        mongoClient.close();
    }
}
	
