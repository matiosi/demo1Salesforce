global class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
       return Database.getQueryLocator(
       'Select  Name,LeadSource from Lead'
       );
    }
    global void execute(Database.BatchableContext bc,List<Lead> scope){
      
        
        for(Lead lead : scope){
            
            lead.LeadSource ='Dreamforce';
            system.debug(lead);
            
        }
        update scope;
    }
    global void finish (Database.BatchableContext bc){
       
    }

}