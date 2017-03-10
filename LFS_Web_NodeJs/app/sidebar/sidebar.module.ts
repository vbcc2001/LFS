import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Sidebarcomponent }   from './sidebar.component';
@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ Sidebarcomponent ],
  bootstrap:    [ Sidebarcomponent ]
})
export class SidebarModule { }