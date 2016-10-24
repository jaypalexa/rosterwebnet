import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Ng2TableHelperClass } from '../../classes/ng2-table-helper-class';

@Component({
    selector: 'organizations',
    template: require('./organizations.component.html'), 
    providers: [Ng2TableHelperClass]
})
export class OrganizationsComponent implements OnInit {

    //-- leverage TypeScript's constructor syntax for declaring parameters and properties simultaneously
    public constructor(private _http: Http, public _tableHelper: Ng2TableHelperClass) {
    }

    public ngOnInit(): void {
        this._tableHelper.rows = [];
        this._tableHelper.columns = [
            //{ title: 'Name', name: 'name', filtering: { filterString: '', placeholder: 'Filter by name' } },
            //{ title: 'Position', name: 'position', sort: false, filtering: { filterString: '', placeholder: 'Filter by position' } },
            { title: 'Organization Name', name: 'organizationName', sort: 'asc' },
            { title: 'City', name: 'city' },
            { title: 'State', name: 'state' }
        ];

        this._tableHelper.page = 1;
        this._tableHelper.itemsPerPage = 10;
        this._tableHelper.maxSize = 5;
        this._tableHelper.numPages = 1;
        this._tableHelper.length = 0;

        this._tableHelper.config = {
            paging: false,
            sorting: { columns: this._tableHelper.columns },
            filtering: { filterString: '' },
            className: ['table-striped', 'table-bordered']
        };

        this._http.get('/api/Organizations/OrganizationListItems').subscribe(result => {
            this._tableHelper.data = result.json();
            this._tableHelper.onChangeTable(this._tableHelper.config);
        });
    }
}

