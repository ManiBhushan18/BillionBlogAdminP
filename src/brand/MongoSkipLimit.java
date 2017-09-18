package brand;
import com.mongodb.Block;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
public class MongoSkipLimit {
	public static void main(String[] args) 
	{

    MongoClient mongoClient = new MongoClient("localhost", 27017);
    MongoDatabase database = mongoClient.getDatabase("mani");

    MongoCollection<Document> col = database.getCollection("Empdetails");
    

    FindIterable it = col.find().skip(2).limit(5);
    
    
    //it.forEach((Block<Document>) System.out::println);
    
    
    //it.forEach((Document document) -> System.out.println(document.get("_id")));
    
    
    
    mongoClient.close();
}
}

