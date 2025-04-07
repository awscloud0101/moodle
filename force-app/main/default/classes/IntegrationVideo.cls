public class IntegrationVideo {
    public static void populateWrapper(){
     IntegrationVideo.wrapperMeeting wrap = new IntegrationVideo.wrapperMeeting();
        wrap.topicOfMeeting = 'For SFDC Training';
        wrap.typeOfMeeting = 2;
        wrap.startTime = '2024-10-26T16:30:04z';
        wrap.durationMeeting = 60;
        wrap.timeZone= 'Asia/Kolkata';
        string jsonString = JSON.serialize(wrap);
        createMeeting(jsonString);
        
    }
    public static void createMeeting(string jsonBody){
        HttpRequest req = New HttpRequest();
        req.setBody(jsonBody);
        req.setMethod('POST');
        req.setHeader('content-type','application/json');
        req.setEndPoint('callout:Zoom_Integration/v2/users/me/meetings');
        Http http = New Http();
        HttpResponse res = Http.send(req);
        system.debug('Response Code' +res.getStatusCode());
    try {
         
            System.debug('The Status Code is: ' + res.getStatusCode());
            System.debug('The Response Body is: ' + res.getBody());
        } catch (Exception e) {
            System.debug('Callout failed: ' + e.getMessage());
        }
        }
    public class wrapperMeeting{
        public string topicOfMeeting{get;set;}
        public integer typeOfMeeting{get;set;}
        public string startTime{get;set;}
        public integer durationMeeting{get;set;}
        public string timeZone{get;set;}
        
    }
  }