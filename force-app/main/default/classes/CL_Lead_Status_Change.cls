public class CL_Lead_Status_Change {
    public static void leadstat()
{
    List<Lead> L = [select Name, Status,Rating from Lead];
    for(Lead leadRecord:L)
    {
        if (leadRecord.Status == 'Open - Not Contacted')
        {
            leadRecord.Rating = 'Hot';
        }
            else if(leadRecord.Status == 'Working - Contacted')
            {
                leadRecord.Rating = 'Warm';
            }
        else(leadRecord.Rating = 'Cold');
       
    }
    
    Update(L);
}

}