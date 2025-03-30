import { LightningElement } from 'lwc';

export default class Myproject1 extends LightningElement 
{
    num1;
    num2;
    num3;

    capfirstnum(event)
 {
    this.num1=event.target.value;
 }
 capsecnum(event)
 {
    this.num2=event.target.value;
 }capthirdnum(event)
 {
    this.num3=event.target.value;
 }
 calme(event)
 {
    if(parseInt(this.num1)>parseInt(this.num2) && parseInt(this.num1)>parseInt(this.num3))
    {
        alert("Greater Number is:" +this.num1 );
    }
    else if (parseInt(this.num2)>parseInt(this.num1)&& parseInt(this.num2)>parseInt(this.num3))
    {
        alert("Greater Number is :" +this.num2);
    }
    else
    {
        alert("Greater Number is :" +this.num3);
    }
 }

}