({
    calculate: function(component, operation) {
        var num1 = component.find("inp1").get("v.value");
        var num2 = component.find("inp2").get("v.value");
        var result;
        
        if (!isNaN(num1) && !isNaN(num2)) {
            num1 = parseFloat(num1);
            num2 = parseFloat(num2);
            
            switch (operation) {
                case 'add':
                    result = num1 + num2;
                    break;
                case 'subtract':
                    result = num1 - num2;
                    break;
                case 'multiply':
                    result = num1 * num2;
                    break;
                case 'divide':
                    result = num2 !== 0 ? num1 / num2 : 'Cannot divide by zero';
                    break;
            }
        } else {
            result = 'Please enter valid numbers';
        }
        
        component.set("v.result", result.toString());
    }
})