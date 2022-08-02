public class Spoonacular {

    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = '616aa61164fa4032a16e33f96e23ab52';
    
    public static void getRandonReceipe(){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/random?apiKey=' + API_KEY);
request.setMethod('GET');
HttpResponse response = http.send(request);

System.debug(response.getStatusCode());
// If the request is successful, parse the JSON response.
if(response.getStatusCode() == 200) {
    
        System.debug(response.getBody());
    }
    }
    
public static void getReceipe(String id){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/' + id + 'ínformation?apiKey=' + API_KEY);
request.setMethod('GET');
HttpResponse response = http.send(request);

System.debug(response.getStatusCode());
// If the request is successful, parse the JSON response.
if(response.getStatusCode() == 200) {
    
        System.debug(response.getBody());
    }
                    }  

                    
public static void getReceipeByIngredient(String ingredients){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/findByIngredients?apiKey=' + API_KEY+ '&ingredients='+ingredients);
request.setMethod('GET');
HttpResponse response = http.send(request);

System.debug(response.getStatusCode());
// If the request is successful, parse the JSON response.
if(response.getStatusCode() == 200) {
    
        System.debug(response.getBody());
    }
    }
                    
}