({
    addme: function(component, event, helper) {
        helper.calculate(component, 'add');
    },
    
    subme: function(component, event, helper) {
        helper.calculate(component, 'subtract');
    },
    
    mulme: function(component, event, helper) {
        helper.calculate(component, 'multiply');
    },
    
    divme: function(component, event, helper) {
        helper.calculate(component, 'divide');
    }
})