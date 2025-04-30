public class UpdateProdToMesSess {
	 @InvocableMethod(label = 'UpdateMsssg')
    public static void getCases(list<wrapMessSesProd> wraObj){
        Contact ct = [SELECT Name FROM Contact WHERE Id=:wraObj[0].conId limit 1];
        MessagingSession msSession = new MessagingSession(Id=wraObj[0].messSesId, 
                                                          Product_Selected__c= wraObj[0].prodName, 
                                                          Contact_Name_New__c = ct.Name );
        update msSession;
    }
    
    public class wrapMessSesProd{
        @InvocableVariable  public string prodName;
        @InvocableVariable public string messSesId;
        @InvocableVariable public string conId;
    }
}