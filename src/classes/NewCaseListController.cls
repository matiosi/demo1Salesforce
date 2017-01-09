public class NewCaseListController {
	
    public  List<Case> getNewCases(){
        
        List <Case> cases = [SELECT CaseNumber FROM Case WHERE status = 'New'];
       
        return cases;
            
    }
}