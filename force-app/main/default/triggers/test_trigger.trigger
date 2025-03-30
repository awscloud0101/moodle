trigger test_trigger on Account (after update) {
    if(trigger.isafter)
    {
        for(account s:trigger.old){
             system.debug('Ticker Symbol is as follows before update: ' +s.TickerSymbol); 
             system.debug('Type is as follows before update: ' +s.Type);  
             system.debug('Industry is as follows before update: ' +s.Industry); 
        }
        for(account s:trigger.new){
             system.debug('Ticker Symbol is as follows before update: ' +s.TickerSymbol); 
             system.debug('Type is as follows before update: ' +s.Type);   
             system.debug('Industry is as follows before update: ' +s.Industry); 
        }



    }
}