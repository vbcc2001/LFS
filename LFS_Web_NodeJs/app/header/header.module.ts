import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Headercomponent }   from './header.component';
@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ Headercomponent ],
  bootstrap:    [ Headercomponent ]
})
export class HeaderModule { }