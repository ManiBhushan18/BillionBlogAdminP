package influencer;

import java.net.UnknownHostException;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class influencerall 

{

	public static void main(String[] args) throws UnknownHostException 
    {
        MongoClient mongo = new MongoClient("localhost", 27017);
        DB db = mongo.getDB("bb");
        DBCollection collection = db.getCollection("users");
        
 
        DBCursor cursor = collection.find();
        while(cursor.hasNext()) {
            System.out.println(cursor.next());
        }
    }
}
