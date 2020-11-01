package underdevelopment.api;

import org.json.JSONException;
import org.json.JSONObject;

import underdevelopment.api.utils.JsonHttpReponse;
import underdevelopment.api.utils.JsonRequestHandler;
import underdevelopment.api.utils.Status;
import underdevelopment.db.DBAcs;
import underdevelopment.db.DBUserInfo;

public class ACSHandler {
	 public static JsonRequestHandler getACS() {
		 return (JSONObject jsonObj) -> {
			 	System.out.println("getting ACS");
	            String username;
	            int ammount;

	            String response;

	            // Check to make sure the username exists
	            try {
	                username = jsonObj.getString("username");
	                ammount = jsonObj.getInt("ammount");
	            } catch (Exception e) {
	                return new JsonHttpReponse(Status.BADREQUEST);
	            }
	            
	            // Make sure we havea positive number.....
	            if(ammount < 0) {
	            	return new JsonHttpReponse(Status.BADREQUEST);
	            }
	            
	            // Run the database command 			
	            try {
		    		System.out.println("running the edit ACS");

	            	String[][] newACS = DBAcs.getACS(username, ammount);
	                response = new JSONObject()
	                    .put("ammount", newACS[0])
	                    .put("date", newACS[1])
	                    .toString();
	               // System.out.println("New ACS is: " + newACS);
	                	return new JsonHttpReponse(Status.OK, response);
	            } catch (JSONException e) {
	                e.printStackTrace();
	                return new JsonHttpReponse(Status.SERVERERROR);
	                
	            } 
	        };
		 
	 }
	 public static JsonRequestHandler handleACS() {
		 return (JSONObject jsonObj) -> {
	            String username;
	            int ammount;
	            String date;
	            
	            String response;

	            // Check to make sure the username exists
	            try {
	                username = jsonObj.getString("username");
	                ammount = jsonObj.getInt("ammount");
	                date = jsonObj.getString("date");
	            } catch (Exception e) {
	                return new JsonHttpReponse(Status.BADREQUEST);
	            }

	            // Run the database command 			
	            try {
		    		System.out.println("running the edit ACS");

	            	int newACS = DBAcs.editACS(username, ammount, date);
	                response = new JSONObject()
	                    .put("Response", "new ACS is:  " + newACS)
	                    .toString();
	                System.out.println("New ACS is: " + newACS);
	                	return new JsonHttpReponse(Status.OK, response);
	            } catch (JSONException e) {
	                e.printStackTrace();
	                return new JsonHttpReponse(Status.SERVERERROR);
	                
	            } 
	        };
		 
	 }
}