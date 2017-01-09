public class AddPrimaryContact implements Queueable {
    
    private Contact contact;
    private String stateAbbrev;
    
    public AddPrimaryContact(Contact c, String stateAbbr){
        this.contact = c;
        this.stateAbbrev = stateAbbr;
    }
    
    public void execute (QueueableContext context){
        
        List<Account> listAccount = [Select ID,Name from Account where BillingState = :stateAbbrev LIMIT 200];
        
        List<Contact> lstCOntact = new List<Contact>();
        
        for(Account account : listAccount){
           		Contact cont = contact.clone(false,false,false,false);
            cont.AccountId = account.Id;
            lstContact.add(cont);
            }
        insert lstContact;
        }

}