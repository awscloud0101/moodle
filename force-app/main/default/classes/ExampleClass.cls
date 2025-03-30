public class ExampleClass {
    // Primitive Data Types
    Integer count = 10;
    Double price = 19.99;
    Long largeNumber = 1234567890L;
    Date today = Date.today();
   
    Datetime now = Datetime.now();
    String name = 'John Doe';
    Boolean isActive = true;
    ID recordId = '001D000000IqhSL';

    // Collection Data Types
    List<String> names = new List<String>{'John', 'Jane', 'Doe'};
    Set<Integer> uniqueNumbers = new Set<Integer>{1, 2, 3, 4};
    Map<String, Integer> nameToAge = new Map<String, Integer>{'John' => 30, 'Jane' => 25};

    // sObject Data Types
    Account acc = new Account(Name = 'Acme Corporation');
    Contact con = new Contact(FirstName = 'John', LastName = 'Doe');
    sObject genericObject = [SELECT Name FROM Account LIMIT 1];

   
    // Method demonstrating usage
    public void displayInfo() {
        System.debug('Count: ' + count);
        System.debug('Price: ' + price);
        System.debug('Large Number: ' + largeNumber);
        System.debug('Today: ' + today);

        System.debug('Now: ' + now);
        System.debug('Name: ' + name);
        System.debug('Is Active: ' + isActive);
        System.debug('Record ID: ' + recordId);

        System.debug('Names: ' + names);
        System.debug('Unique Numbers: ' + uniqueNumbers);
        System.debug('Name to Age Map: ' + nameToAge);

        System.debug('Account: ' + acc);
        System.debug('Contact: ' + con);
        System.debug('Generic Object: ' + genericObject);

        
    }
}