trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
	
    List<Task> taskList = new List<Task>();
    
    for(Opportunity opp : [Select Id, StageName from Opportunity WHERE StageName = 'Closed Won' AND Id IN : Trigger.new]){
        
        taskList.add(new Task (Subject = 'Follow Up Test Task',
                    WhatID = opp.Id));
    }
    if(taskList.size()>0){
        insert taskList;
    }
}