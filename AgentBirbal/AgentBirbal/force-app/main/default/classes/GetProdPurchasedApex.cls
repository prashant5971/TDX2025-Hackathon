public class GetProdPurchasedApex {
    @InvocableMethod(label = 'CaseSearch')
    public static List<List<String>> getCases(list<String> contactContxId){
        List<String> result = new List<String>();
        
        List<Products_Purchased__c> prodPurch = [SELECT Product_Name__c FROM Products_Purchased__c WHERE Contact__c=:contactContxId[0]];

        for(Products_Purchased__c c: prodPurch) {
            result.add(c.Product_Name__c);
        }
        
        return new List<List<String>>{result};
    }
}