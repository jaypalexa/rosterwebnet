import { Component } from '@angular/core';
import { Http } from '@angular/http';

@Component({
    selector: 'users',
    template: require('./users.component.html')
})
export class UsersComponent {
    public userListItems: UserListItem[];

    constructor(http: Http) {
        http.get('/api/Users/UserListItems').subscribe(result => {
            this.userListItems = result.json();
        });
    }
}

interface UserListItem {
    userName: string;
    userEmail: string;
    organizationName: string;
    isAdmin: boolean;
}
