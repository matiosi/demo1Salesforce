public class ContactSearch {
	
    public static List<Contact> searchForContacts (String lastName, String mailing){
        
       return [Select ID, Name from Contact where LastName = :lastName and MailingPostalCode = :mailing ];
        
    }
}