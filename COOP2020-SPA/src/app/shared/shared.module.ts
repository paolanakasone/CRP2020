import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule } from '@angular/router';

import { HomeComponent } from './views/home/home.component';
import { NavComponent } from './views/nav/nav.component';

@NgModule({
  declarations: [
    HomeComponent,
    NavComponent
  ],
  imports: [
    CommonModule,
    BrowserModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    /*JwtModule.forRoot({
       config: {
           tokenGetter: tokenGetter,
           whitelistedDomains: ['localhost:64736'],
           blacklistedRoutes: ['localhost:64736/api/auth']
        }
     }),*/
    RouterModule
  ],
  exports: [
      HomeComponent,
      NavComponent
  ],
  providers: []
})
export class SharedModule { }