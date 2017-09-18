package brand;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import java.net.UnknownHostException;
public class Mongofilter
{
	
	
	
	public static void emptyFindOne() throws UnknownHostException 
	{

		// Get a new connection to the db assuming that it is running
		MongoClient mongoClient = new MongoClient("localhost");

		// use test as a datbase,use your database here
		DB db = mongoClient.getDB("test");

		// fetch the collection object ,car is used here,use your own
		DBCollection coll = db.getCollection("car");

		// invoking findOne() method
		DBObject doc = coll.findOne();

		// prints the resultant document
		System.out.println(doc);
	}
	
	
	
	
	
	
		public static void querySpecification() throws UnknownHostException
		{
			MongoClient m1 = new MongoClient("localhost", 27017);
			DB db = m1.getDB("mani");
			DBCollection col = db.getCollection("Empdetails");

		
			DBObject query = new BasicDBObject("name", "mani").append("speed",
					new BasicDBObject("$gt", 30));

			
			DBObject d1 = col.findOne(query);

			
			System.out.println(d1);
		}
		
		
		
		
		
		public static void projectionFields() throws UnknownHostException 
		{

			MongoClient m1 = new MongoClient("localhost", 27017);
			DB db = m1.getDB("mani");
			DBCollection col = db.getCollection("Empdetails");

			
			BasicDBObject b1 = new BasicDBObject();

			
			BasicDBObject fields = new BasicDBObject("name", 1).append("age", 1);

			
			DBObject d1 = col.findOne(b1, fields);

			System.out.println(d1);

		}
		
		
		
		
		
		
		public static void excludeByfields() throws UnknownHostException 
		{
			MongoClient m1 = new MongoClient("localhost", 27017);

			DB db = m1.getDB("mani");
			DBCollection col = db.getCollection("Empdetails");

			
			
			
			DBObject query = new BasicDBObject("name", "mani");

			
			BasicDBObject fields = new BasicDBObject("mfdcountry", 0).append("cno",0).append("_id", 0);

			DBObject d1 = col.findOne(query, fields);
			
			System.out.println(d1);	
		}
		
		

		
		public static void printDoc() throws UnknownHostException 
		{
			MongoClient m1 = new MongoClient("localhost", 27017);
			DB db = m1.getDB("mani");
			DBCollection col = db.getCollection("Empdetails");
			
			DBObject d1 = col.findOne();
			
			
			
			System.out.println("Name:="+(d1.get("name")));
			System.out.println("Age is:="+(d1.get("age")));
		}
		
		public static void main(String[] args) throws UnknownHostException {
			
			//emptyFindOne();
			
			//querySpecification();
			
			//projectionFields();
			
			//excludeByfields();
			
			printDoc();
		}

	}


