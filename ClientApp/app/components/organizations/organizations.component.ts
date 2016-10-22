import { Component } from '@angular/core';
//import { DatePipe } from "@angular/common";
import { Http } from '@angular/http';
//import { DataTableDirectives } from 'angular2-datatable/datatable';
//import * as _ from 'lodash';
//import * as _ from "lodash";  //$ npm install --save @types/lodash

@Component({
    selector: 'organizations',
    template: require('./organizations.component.html'),
    //providers: [Http],
    //directives: [DataTableDirectives],
    //pipes: [DatePipe]
})
export class OrganizationsComponent {
    public organizationListItems: OrganizationListItem[];

    constructor(http: Http) {
        http.get('/api/Organizations/OrganizationListItems').subscribe(result => {
            this.organizationListItems = result.json();
        });
    }
}

interface OrganizationListItem {
    organizationName: string;
    city: string;
    state: string;
}
