global class DailyLeadProcessor implements Schedulable {
	
    global void execute (SchedulableContext ctx) {
        
        List<Lead> lead = [Select ID,LeadSource from Lead where LeadSource = null LIMIT 200];
        
        for(Lead l : lead){
            l.LeadSource = 'Dreamforce';
        }
        update lead;
    }
}