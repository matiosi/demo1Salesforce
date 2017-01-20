public class AccountHandler {
    String accc='';
    public static Account insertNewAccount(String newName){
     Account acca = new Account(Name = newName);
     try {
    	insert acca;
         return acca;
} catch (DmlException e)
{
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
             return null;
}
    }
}