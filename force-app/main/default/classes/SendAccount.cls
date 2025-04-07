public class SendAccount {
    //Use your Client Id 
    String clientId ='3MVG9JJwBBbcN47LPmq2tuae7SkK29JPmqYhaQQKr_ObDglu4WBUXNIb1ldyPiR3_MYoSSM5MfgC4Fb1C3YpL';
    //Use your Client Secret
    String clientsecret='D9908F3997873DAF2623BCD5FFADFE37417EBBF4DE4260E91BB601D35D3655F1';
    //Your Destination org username
    String username='dileep@onealgo.com';
    //Your Destination orgPassword+Security Token
    String password='Salesforce@0101sUF1v8oakpJtIXGE5PIxj4nS';
    String accesstoken_url='https://login.salesforce.com/services/oauth2/token';
    String authurl='https://login.salesforce.com/services/oauth2/authorize';
    
    public class deserializeResponse {
        public String id;
        public String access_token;
    }
    
    public String ReturnAccessToken(SendAccount Acc){
        String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='
        +clientSecret+'&username='+username+'&password='+password;
        // String reqbody='{“grant_type”:”password”,”client_id”:clientId,”client_secret”:clientSecret, “username”:username,”password”:password}’;
        System.debug(reqbody);
        Http h= new Http();
        HttpRequest req= new HttpRequest();
        req.setBody(reqbody);
        req.setMethod('POST');
        //Change “ap4” in url to your Destination Org Instance
        req.setEndpoint('https://onealgorithmllc-dev-ed/services/oauth2/token');
        System.debug('Request ===>'+req);
        HttpResponse res=h.send(req);
        System.debug(res.getBody()+'By-AP-1986-Response');
        deserializeResponse resp1=
        (deserializeResponse)JSON.deserialize(res.getBody(),deserializeResponse.class);
        System.debug(resp1+'By-AP-deserializeresponse');
        return resp1.access_token;
    }
    
    @future(callout=true)
    public static void createAccount(String Accname, String Phone, String Website){
        SendAccount acc1= new SendAccount();
        String accessToken=acc1.ReturnAccessToken(acc1);
        System.debug(accessToken+'###AP');
        
        if(accessToken!=null){
            //Change “ap4” in url to your Destination Org
            String endPoint='https://ap4.salesforce.com/services/data/v32.0/sobjects/Account';  
            String jsonstr='{"Name":"'+ Accname +'","Phone":"'+ Phone +'","Website":"'+ Website +'"}';
            Http h2= new Http();
            HttpRequest req2= new HttpRequest();
            req2.setHeader('Authorization','Bearer ' +accessToken);
            req2.setHeader('Content-Type','application/json');
            req2.setHeader('accept','application/json');
            req2.setBody(jsonstr);
            req2.setMethod('POST');
            req2.setEndpoint(endPoint);
            system.debug('Request ==>'+req2);
            HttpResponse res2=h2.send(req2);
            System.debug(res2+'###Akash###');
            deserializeResponse deresp= (deserializeResponse)System.JSON.deserialize(res2.getBody(),deserializeResponse.class);
            System.debug('### Deserialized Response ###'+deresp);
        
        }
    }

}