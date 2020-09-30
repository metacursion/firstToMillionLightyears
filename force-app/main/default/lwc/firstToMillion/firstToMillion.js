/**
 * Created by heyoo on 31/08/20.
 */

import {LightningElement} from 'lwc';
import doQuery from '@salesforce/apex/FirstToMillion.doQuery';

export default class FirstToMillion extends LightningElement {
    async connectedCallback() {
        const result = JSON.parse(await doQuery({query: `SELECT Id FROM Lead`}))
        debugger
    }
}