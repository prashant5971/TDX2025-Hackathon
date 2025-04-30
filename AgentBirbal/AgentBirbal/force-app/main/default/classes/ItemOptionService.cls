public with sharing class ItemOptionService {

    // Defines structure of an item name-image pair
        public class ItemDetail {
        public String itemName;
        public String itemImageUrl;
        public String itemMimeType;
        public ItemDetail(String itemName, String itemImageUrl, String itemMimeType) {
            this.itemName = itemName;
            this.itemImageUrl = itemImageUrl;
            this.itemMimeType = itemMimeType;
        }
    }

    // Represents an object that holds a list of item name-image pairs
    public class ItemOptionWrapper {
        @InvocableVariable(label='Item Options' required=true)
        public List<ItemDetail> itemDetails;
        public ItemOptionWrapper() {
            this.itemDetails = new List<ItemDetail>();
        }
    }

    // Reprents input for getItemOptionsByCategory
    public class ItemOptionInput {
        @InvocableVariable(label='MessagingSessContId' required=true)
        public String messSessConId;
    }

    @InvocableMethod(label='Get Item Options by Category' description='Returns a list of item options based on the category name')
    public static List<ItemOptionWrapper> getItemOptionsByCategory(List<ItemOptionInput> categoryNames) {
        System.debug('categoryNames: ' + categoryNames);

        // Get the category name from the input list
        String category = categoryNames[0].messSessConId;
        System.debug('Processing category: ' + category);
		
        ItemOptionWrapper selectedItemWrapper = new ItemOptionWrapper();
        List<Products_Purchased__c> prodPurch = [SELECT Product_Name__c, Product__r.Family FROM Products_Purchased__c WHERE Contact__c=:category];

        for(Products_Purchased__c c: prodPurch) {
            String imageUrl = c.Product__r.Family == 'TV'?'https://5.imimg.com/data5/SN/YH/MY-8412531/television-500x500.png':'https://airedalecooling.com/wp-content/uploads/2017/07/runner-air-con-maintenance.png';
            selectedItemWrapper.itemDetails.add(new ItemDetail(c.Product_Name__c, imageUrl, 'image/jpeg'));
        }
        System.debug('Returning : ' + selectedItemWrapper);
        return new List<ItemOptionWrapper>{ selectedItemWrapper };
    }
}