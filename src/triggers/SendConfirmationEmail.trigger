trigger SendConfirmationEmail  on Session_Speaker__c (after insert){
	
	List<Id> sessionSpeakerIds = new List<Id>();

	for (Session_Speaker__c newItem : Trigger.new) {
		
		sessionSpeakerIds.add(newItem.Id);
	}

	List<Session_Speaker__c> sessionSpeakers = [Select Session__r.Name,
												Session__r.Session_Date__c,
												Speaker__r.First_Name__c,
												Speaker__r.Last_Name__c,
												Speaker__r.Email__c from Session_Speaker__c where Id = :sessionSpeakerIds];

	if(sessionSpeakers.size()>0) {

		Session_Speaker__c sessionSpeaker = sessionSpeakers[0];
		if(sessionSpeaker.Speaker__r.Email__c!=null){

			String address = sessionSpeaker.Speaker__r.Email__c;
			String subject = 'Speaker confirmation';
			String message = 'Dear'+ sessionSpeaker.Speaker__r.First_Name__c+ ',\nYour Session " '+ sessionSpeaker.Session__r.Name+ '" on' + sessionSpeaker.Session__r.Session_Date__c + ' is confirmed.\n\n'+'Thanks for speaking at te conference!';
			EmailManager.sendMail(address,subject,message);

			
		}
	}											
}