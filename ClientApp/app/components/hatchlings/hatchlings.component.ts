import { Component } from '@angular/core';
import { Http } from '@angular/http';

@Component({
    selector: 'hatchlings',
    template: require('./hatchlings.component.html')
})
export class HatchlingsComponent {
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
