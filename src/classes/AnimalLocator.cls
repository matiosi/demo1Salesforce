public class AnimalLocator {
public static String getAnimalNameById( Integer x ) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+x);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
    	String strName = '';
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            Map<String,Object> animals = (Map<String,Object>) results.get('animal');
            strName = String.valueOf(animals.get('name'));
            System.debug('Received the following animals:');
            
        }
        return strName;
    }
}