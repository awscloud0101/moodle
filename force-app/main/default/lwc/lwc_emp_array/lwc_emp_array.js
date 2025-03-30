import { LightningElement, track } from 'lwc';

export default class Lwc_emp_array extends LightningElement
 {
    @track employees = [
        {'id':1,'name':'Sathish','age':40,'city':"Hyderabad",'salary':50000},
        {'id':2,'name':'Saritha','age':41,'city':'Chennai','salary':60000},
        {'id':3,'name':'Sairam','age':42,'city':'Mumbai','salary':70000}
                       ];
 }