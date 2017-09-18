package mongo;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.util.JSON;
public class InsertDocumentDemo {
	public static void main(String[] args) {
		 try {
		  
		  Mongo mongo = new Mongo("localhost", 27017);
		  

		  

		  DB db = mongo.getDB("mani");
		   
		 

		  DBCollection collection = db.getCollection("insertion");

		 
		  System.out.println("BasicDBObject example...");
		  BasicDBObject document = new BasicDBObject();
		  document.put("database", "mani");
		  document.put("table", "insertion");

		  BasicDBObject documentDetail = new BasicDBObject();
		  documentDetail.put("empId", "10002");
		  documentDetail.put("empName", "Mani");
		  documentDetail.put("salary", "80000");
		  document.put("detail", documentDetail);

		  collection.insert(document);

		  DBCursor cursorDoc = collection.find();
		  while (cursorDoc.hasNext()) {
		  System.out.println(cursorDoc.next());
		  }
		 
		  collection.remove(new BasicDBObject());

		 
		  System.out.println("BasicDBObjectBuilder example...");
		 BasicDBObjectBuilder documentBuilder = BasicDBObjectBuilder.start()
		   .add("database", "mani")
		                        .add("table", "insertion");
		 BasicDBObjectBuilder documentBuilderDetail = BasicDBObjectBuilder.start()
                 .add("empId", "10001")
                 .add("empName", "Dinesh")
        .add("salary", "70000");

documentBuilder.add("detail", documentBuilderDetail.get());

collection.insert(documentBuilder.get());

DBCursor cursorDocBuilder = collection.find();
while (cursorDocBuilder.hasNext()) {
System.out.println(cursorDocBuilder.next());
}

collection.remove(new BasicDBObject());
System.out.println("Map example...");
Map<String, Object> documentMap = new HashMap<String, Object>();
documentMap.put("database", "mani");
documentMap.put("table", "insertion");

Map<String, Object> documentMapDetail = new HashMap<String, Object>();
documentMapDetail.put("empId", "10001");
documentMapDetail.put("empName", "Dinesh");
documentMapDetail.put("salary", "70000");

documentMap.put("detail", documentMapDetail);

collection.insert(new BasicDBObject(documentMap));

DBCursor cursorDocMap = collection.find();
while (cursorDocMap.hasNext()) {
 System.out.println(cursorDocMap.next());
}

collection.remove(new BasicDBObject());




System.out.println("JSON parse example...");



String json = "{'database' : 'mani','table' : 'insertion'," +
"'detail' : {'empId' : 10001, 'empName' : 'Dinesh', 'salary' : '70000'}}}";

DBObject dbObject = (DBObject)JSON.parse(json);

collection.insert(dbObject);



DBCursor cursorDocJSON = collection.find();
while (cursorDocJSON.hasNext()) {
 System.out.println(cursorDocJSON.next());
}



System.out.println("Done");
		 } catch (MongoException e) {
			   e.printStackTrace();
			}
			 
			}

			}
