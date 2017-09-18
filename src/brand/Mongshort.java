package brand;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.List;
public class Mongshort {
	
	public static void main(String[] args) {

    MongoClient mongoClient = new MongoClient("localhost", 27017);
    MongoDatabase database = mongoClient.getDatabase("mani");

    MongoCollection<Document> col = database.getCollection("Empdetails");

    try (MongoCursor<Document> cur = col.find().iterator()) {
        while (cur.hasNext()) {

            Document doc = cur.next();
            
            List list = new ArrayList(doc.values());
            
            System.out.print(list.get(1));
            System.out.print(": ");
            System.out.println(list.get(2));
        }
    }

  //  mongoClient.close();
}
}
