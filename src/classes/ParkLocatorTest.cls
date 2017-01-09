@isTest
public class ParkLocatorTest {
    @isTest static void testCallout(){
        Test.setMock(WebServiceMock.class,new ParkServiceMock());
        
            String country = 'Germany';
            String [] result = ParkLocator.Country(country);
        System.assertEquals(new List<String>{'Hamburg Wadden Sea National Park', 'Hainich National Park', 'Bavarian Forest National Park'}, result);
    }
    

}