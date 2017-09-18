package brand;
import java.net.UnknownHostException;
import java.util.List;
 
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
public class MongoDBSort {
	 public static void sortAscending() throws UnknownHostException {
		 
	        // Get a new connection to the db assuming that it is running
	        MongoClient m1 = new MongoClient("localhost");
	 
	        // use test as a datbase,use your database here
	        DB d1 = m1.getDB("test");
	 
	        // fetch the collection object ,car is used here,use your own
	        DBCollection coll = d1.getCollection("car");
	 
	        // find method is called and result stored in cursor
	        DBCursor car = coll.find();
	 
	        // sorting the cursor based in ascending order based on name field
	        car.sort(new BasicDBObject("name", 1));
	 
	        // iterating throug cursor and printing all the documents stored in
	        // cursor
	        try {
	            while (car.hasNext()) {
	                System.out.println(car.next());
	            }
	        } finally {
	            car.close();
	        }
	 
	    }
	// method for sorting in descending order based on speed
	    public static void sortDescending() throws UnknownHostException {
	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB d1 = m1.getDB("test");
	 
	        DBCollection coll = d1.getCollection("car");
	 
	        DBCursor car = coll.find();
	 
	        // sorting the cursor based in descending order based on speed field
	        car.sort(new BasicDBObject("speed", -1));
	 
	        System.out
	                .println("Sorts in Descending order-------------------------------------------");
	        try {
	            while (car.hasNext()) {
	                System.out.println(car.next());
	            }
	        } finally {
	            car.close();
	        }
	 
	    }
	 // method for sorting in descending order based on speed and ascending order
	    // based on name
	    public static void sortDescendingAscending() throws UnknownHostException {
	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB d1 = m1.getDB("test");
	 
	        DBCollection coll = d1.getCollection("car");
	 
	        DBCursor car = coll.find();
	 
	        // sort speed in descending order then name in ascending order
	        car.sort(new BasicDBObject("speed", -1).append("name", 1));
	 
	        System.out
	                .println("Combining two fields to sort in ascending and descending orders-----------------");
	 
	        try {
	            while (car.hasNext()) {
	                System.out.println(car.next());
	            }
	        } finally {
	            car.close();
	        }
	 
	    }
	    public static void sortlimit() throws UnknownHostException {
	    	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB d1 = m1.getDB("test");
	 
	        DBCollection coll = d1.getCollection("car");
	 
	        DBObject q1 = new BasicDBObject("speed", new BasicDBObject("$gt", 15));
	 
	        BasicDBObject fields = new BasicDBObject("name", 1).append("speed", 1);
	 
	        // find method is called and result stored //fetch the collection object
	        // ,car is used here,use your ownin cursor
	        DBCursor car = coll.find(q1, fields);
	 
	        // sorting the cursor based in ascending order based on name field
	        car.sort(new BasicDBObject("name", -1)).limit(2);
	 
	        System.out.println("limit--------------------------");
	 
	        // iterating throug cursor and printing all the documents stored in
	        // cursor
	        try {
	            while (car.hasNext()) {
	                System.out.println(car.next());
	            }
	        } finally {
	            car.close();
	        }
	 
	    }
	    public static void sortProjectionfields() throws UnknownHostException {
	    	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB db = m1.getDB("test");
	 
	        DBCollection col = db.getCollection("car");
	 
	        DBObject query = new BasicDBObject("speed",
	                new BasicDBObject("$gt", 40));
	 
	        // fields with name and speed field is specified and only these fields
	        // are displayed
	        BasicDBObject fields = new BasicDBObject("name", 1).append("speed", 1);
	 
	        DBCursor carCursor1 = col.find(query, fields);
	 
	        System.out
	                .println("------------------------------------------------------");
	 
	        try {
	            while (carCursor1.hasNext()) {
	                System.out.println(carCursor1.next());
	            }
	        } finally {
	            carCursor1.close();
	        }
	    }
	    public static void sortnaturalordering() throws UnknownHostException {
	    	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB d1 = m1.getDB("test");
	 
	        DBCollection coll = d1.getCollection("car");
	 
	        DBObject q1 = new BasicDBObject("speed", new BasicDBObject("$gt", 15));
	 
	        BasicDBObject fields = new BasicDBObject("name", 1).append("speed", 1);
	 
	        // find method is called and result stored
	        // fetch the collection object ,car is used here,use your own cursor
	        DBCursor car = coll.find(q1, fields);
	 
	        // sorting the cursor based in ascending order based on name field
	        car.sort(new BasicDBObject("$natural", -1));
	 
	        System.out.println("natural ordering---------------");
	 
	        // iterating through cursor and printing all the documents stored in
	        // cursor
	        try {
	            while (car.hasNext()) {
	                System.out.println(car.next());
	            }
	        } finally {
	            car.close();
	        }
	 
	    }
	    public static void createIndex(String on, int type)
	            throws UnknownHostException {
	 
	        MongoClient m1 = new MongoClient("localhost");
	 
	        DB d1 = m1.getDB("test");
	 
	        DBCollection coll = d1.getCollection("car");
	 
	        coll.createIndex(new BasicDBObject(on, type));
	 
	        System.out.println("created index---------------------");
	 
	        List<DBObject> list = coll.getIndexInfo();
	 
	        for (DBObject o : list) {
	            System.out.println(o);
	        }
	 
	    }
	 
	    public static void main(String[] args) throws UnknownHostException {
	 
	        // invoking methods for performing sorting
	        sortAscending();
	        sortDescending();
	        sortDescendingAscending();
	        sortlimit();
	        sortProjectionfields();
	        sortnaturalordering();
	        createIndex("name", 1);
	    }
	 
	}


