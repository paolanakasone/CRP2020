import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/shared/services/auth/auth.service';
import { Router } from '@angular/router';
import { AlertifyService } from 'src/app/shared/services/alertify/alertify.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.less']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  usuario: any = {};

  constructor(public authService: AuthService, private router: Router, private alertify: AlertifyService,private formBuilder: FormBuilder) { }

  ngOnInit() {
    this.loginForm = this.formBuilder.group({
      username: ['', [Validators.required]],
      password: ['', [Validators.required, Validators.minLength(4)]]
  });
  }

  login() {
    debugger;
    if (this.loginForm.invalid) {
      return;
    }
    this.usuario = Object.assign({}, this.loginForm.value);
    this.authService.login(this.usuario).subscribe(next => {
      this.alertify.success('Bienvenido');
      this.router.navigate(['inicio']);
    }, error => {
      this.alertify.error(error.error);
    });
  }

}
