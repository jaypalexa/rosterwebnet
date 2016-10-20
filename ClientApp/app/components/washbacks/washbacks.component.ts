import { Component } from '@angular/core';
import { Http } from '@angular/http';

@Component({
    selector: 'washbacks',
    template: require('./washbacks.component.html')
})
export class WashbacksComponent {
    public forecasts: WeatherForecast[];

    constructor(http: Http) {
        http.get('/api/SampleData/WeatherForecasts').subscribe(result => {
            this.forecasts = result.json();
        });
    }
}

interface WeatherForecast {
    dateFormatted: string;
    temperatureC: number;
    temperatureF: number;
    summary: string;
}
