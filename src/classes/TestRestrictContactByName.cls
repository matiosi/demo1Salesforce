@isTest
private class TestRestrictContactByName {

    static testMethod void  restrictContactByNameTest() 
    {
    
        List<Contact> listContact= new List<Contact>();
        Contact c1 = new Contact(FirstName='Mateusz', LastName='Osiak' , email='Test@test.com');
        Contact c2 = new Contact(FirstName='Mateusz1', LastName = 'INVALIDNAME',email='Test@test.com');
        listContact.add(c1);
        listContact.add(c2);
        
        Test.startTest();
            try
            {
                insert listContact;
            }
            catch(Exception ee)
            {
            }
        
        Test.stopTest(); 
        
    }
    
}