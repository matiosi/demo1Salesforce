@RestResource(urlMapping = '/Accounts/*/contacts')
global class AccountManager {

    @HttpGet
    global static Account getAccount(){
        RestRequest req = RestContext.request;
        String accounts = req.requestURI.substringBetween('/Accounts/' , '/contacts');
        Account result = [SELECT Id, Name, (SELECT Id,Name FROM Contacts) FROM Account WHERE Id = :accounts];
        
        return result;
    }
}