public class AccountProcessor {
    
    @future
    public static void countContacts( List<Id> recordId){
        
        List<Account> acca = [Select id,Number_of_Contacts__c, (Select id from contacts) from account where id = :recordId ];
        
        for(Account acc : acca){
            
			List<Contact> lstContacts = acc.contacts;
            acc.Number_of_Contacts__c = lstContacts.size();
        }
        update acca;
    }
}