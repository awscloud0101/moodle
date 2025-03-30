public class EnergyDataFetcher {
    @InvocableMethod
    public static List<Decimal> fetchEnergyData(List<Id> recordIds) {
        List<Decimal> energyData = new List<Decimal>();
        // Sample logic to fetch energy data, replace with actual logic
        for (Id recordId : recordIds) {
            energyData.add(100.0); // Replace with actual data fetching logic
        }
        return energyData;
    }
}