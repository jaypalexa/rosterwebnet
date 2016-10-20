import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UniversalModule } from 'angular2-universal';
import { AppComponent } from './components/app/app.component'
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { HomeComponent } from './components/home/home.component';
import { CounterComponent } from './components/counter/counter.component';
import { FetchDataComponent } from './components/fetchdata/fetchdata.component';
import { SeaTurtlesComponent } from './components/seaturtles/seaturtles.component';
import { HoldingTanksComponent } from './components/holdingtanks/holdingtanks.component';
import { HatchlingsComponent } from './components/hatchlings/hatchlings.component';
import { WashbacksComponent } from './components/washbacks/washbacks.component';
import { UsersComponent } from './components/users/users.component';

@NgModule({
    bootstrap: [ AppComponent ],
    declarations: [
        AppComponent,
        NavMenuComponent,
        HomeComponent,
        CounterComponent,
        FetchDataComponent,
        SeaTurtlesComponent,
        HoldingTanksComponent,
        HatchlingsComponent,
        WashbacksComponent, 
        UsersComponent
    ],
    imports: [
        UniversalModule, // Must be first import. This automatically imports BrowserModule, HttpModule, and JsonpModule too.
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'counter', component: CounterComponent },
            { path: 'fetch-data', component: FetchDataComponent },
            { path: 'sea-turtles', component: SeaTurtlesComponent },
            { path: 'holding-tanks', component: HoldingTanksComponent },
            { path: 'hatchlings', component: HatchlingsComponent },
            { path: 'washbacks', component: WashbacksComponent },
            { path: 'users', component: UsersComponent },
            { path: '**', redirectTo: 'home' }
        ])
    ]
})
export class AppModule {
}
