import { NgModule } from '@angular/core';
import { RegistroUsuarioComponent } from './views/registro-usuario/registro-usuario.component';
import { SharedModule } from '../shared/shared.module';
import { LoginComponent } from './views/login/login.component';


@NgModule({
  declarations: [
    RegistroUsuarioComponent,
    LoginComponent
  ],
  imports: [
    SharedModule
  ],
  exports: [
    RegistroUsuarioComponent,
    LoginComponent
  ],
  providers: []
})
export class AuthModule { }
