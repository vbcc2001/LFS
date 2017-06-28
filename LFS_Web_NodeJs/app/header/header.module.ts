import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Headercomponent }   from './header.component';
import { LoginComponent }   from '../login/login.component';
@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ Headercomponent,LoginComponent ],
  bootstrap:    [ Headercomponent,LoginComponent ]
})
export class HeaderModule { }