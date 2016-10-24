import { Component, OnInit } from '@angular/core';
import { Http } from '@angular/http';
import { Ng2TableHelperClass } from '../../classes/ng2-table-helper-class';

@Component({
    selector: 'users',
    template: require('./users.component.html'), 
    providers: [Ng2TableHelperClass]
})
export class UsersComponent implements OnInit {

    //-- leverage TypeScript's constructor syntax for declaring parameters and properties simultaneously
    public constructor(private _http: Http, public _tableHelper: Ng2TableHelperClass) {
    }

    public ngOnInit(): void {
        this._tableHelper.rows = [];
        this._tableHelper.columns = [
            { title: 'User Name', name: 'userName', sort: 'asc' },
            { title: 'E-mail', name: 'userEmail' },
            { title: 'Organization', name: 'organizationName' }, 
            { title: 'Is Admin?', name: 'isAdmin' }
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

        this._http.get('/api/Users/UserListItems').subscribe(result => {
            this._tableHelper.data = result.json();
            this._tableHelper.onChangeTable(this._tableHelper.config);
        });
    }
}

