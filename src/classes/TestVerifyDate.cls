@isTest
public class TestVerifyDate {
    
    @isTest static void setVerifyDateTest(){
        Date date1 = date.newInstance(2016, 12, 12);
        Date date2 = date.newInstance(2016, 12, 21);
        Date dateTest = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(date2, dateTest);
    }
     @isTest static void setVerifyDateTest2(){
        Date date1 = date.newInstance(2016, 11, 12);
        Date date2 = date.newInstance(2016, 12, 21);
        Date date3 = date.newInstance(2016, 11, 30);
        Date dateTest = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(date3, dateTest);
    }
}