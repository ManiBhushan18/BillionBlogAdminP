package brand;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.gt;
import static com.mongodb.client.model.Filters.lt;
import java.util.ArrayList;
public class MongoFilterexample {
	public static void main(String[] args) {

        MongoClient mongoClient = new MongoClient("localhost", 27017);
        MongoDatabase database = mongoClient.getDatabase("mani");

        MongoCollection<Document> col = database.getCollection("Empdetails");
               
        FindIterable it = col.find(and(lt("age", 35),
                gt("age", 20))).sort(new Document("age", -1));
        
        ArrayList<Document> docs = new ArrayList();
        
        it.into(docs);

        for (Document doc : docs) 
        {
            System.out.println(doc.toJson());
        }
        
        mongoClient.close();
    }
}


