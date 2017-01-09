public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts(Integer par1, String par2){
        
        List<Contact> cont = new List<Contact>();
        
        for(Integer i = 1; i<=par1; i++){
            
            Contact c1 = new Contact(FirstName = 'Name'+i);
            cont.add(c1);
        }
		return cont;        
    }
}