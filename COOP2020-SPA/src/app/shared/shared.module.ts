import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule } from '@angular/router';
import { JwtModule } from "@auth0/angular-jwt";
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { BsDropdownModule } from 'ngx-bootstrap/dropdown'

import { HomeComponent } from './views/home/home.component';
import { NavComponent } from './views/nav/nav.component';
import { InicioComponent } from './views/inicio/inicio.component';

export function tokenGetter() {
  return localStorage.getItem("access_token");
}

@NgModule({
  declarations: [
    HomeComponent,
    NavComponent,
    InicioComponent
  ],
  imports: [
    CommonModule,
    BrowserModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    BsDropdownModule.forRoot(),
    JwtModule.forRoot({
       config: {
           tokenGetter: tokenGetter,
           whitelistedDomains: ['localhost:56950'],
           blacklistedRoutes: ['localhost:56950/api/auth']
        }
     }),
    RouterModule,
    NgbModule
  ],
  exports: [
      HomeComponent,
      NavComponent,
      InicioComponent,
      CommonModule,
      BrowserModule,
      HttpClientModule,
      FormsModule,
      ReactiveFormsModule,
      BrowserAnimationsModule,
      JwtModule,
      RouterModule,
      NgbModule,
      BsDropdownModule
  ],
  providers: []
})
export class SharedModule { }