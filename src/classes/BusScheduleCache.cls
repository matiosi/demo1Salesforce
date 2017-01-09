public class BusScheduleCache {
	private Cache.OrgPartition part;
    String partitionName = 'local.BusSchedule';
    public BusScheduleCache(){
        Cache.OrgPartition orgPart = new Cache.OrgPartition(partitionName);
        part = orgPart;
    }
    public void putSchedule(String busLine, Time[] schedule){
		
		part.put(busLine , schedule);
    }
    public Time[] getSchedule(String busLine){

    	Time[] schedule = new List<Time>();
    	
    	Object obj = part.get(busLine);
    	Time t1;
		if(obj !=null){
			t1 = (Time)obj;
		}
		if(t1 !=null){
			schedule.add(t1);
		}else {
			Time t2 = Time.newInstance(8,  0,  0,  0);
			Time t3 = Time.newInstance(17,  0,  0,  0);

			schedule.add(t2);
			schedule.add(t3);
		}
    	

    	return schedule;
    }
}