import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './content/app.module';
import { LogoModule } from './logo/logo.module';
import { HeaderModule } from './header/header.module';
import { SidebarModule } from './sidebar/sidebar.module';
import { FooterModule } from './footer/footer.module';
const platform = platformBrowserDynamic();
platform.bootstrapModule(LogoModule);
platform.bootstrapModule(HeaderModule);
platform.bootstrapModule(SidebarModule);
platform.bootstrapModule(AppModule);
platform.bootstrapModule(FooterModule);