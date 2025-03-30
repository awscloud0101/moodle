import { LightningElement, wire } from 'lwc';
import abc from '@salesforce/apex/cl_1211_eg1_retriveaccount.findaccount';

//this is initialization
const colll=[
    {label :'Account Name', fieldName :'Name', type :'text'},
    {label :'Account Phone', fieldName :'Phone', type :'Phone'},
    {label: 'Account Industry', fieldName :'Industry', type :'text'},
    {label :'Account Rating', FieldName :'Rating', type : 'text'}

];
export default class Lwc_1211_eg1_wire2 extends LightningElement
 {
    myclm=colll;
    searchtext;
    searchtext2;
    capsearchkey(event)
    {
    this.searchtext = event.target.value;
    };
    searchme(event)
    {
        this.searchtext2=this.searchtext;
    };
    @wire(abc, {searchkey : '$searchtext2'}) dileep;
}