import { LightningElement } from 'lwc';
import { wire } from 'lwc';
import allacc from '@salesforce/apex/cl_1111_eg2_dataretrive.allacc';

export default class Lwc_1111_eg2_wire extends LightningElement 
{
    @wire(allacc) Ddata;
}