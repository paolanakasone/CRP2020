import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../../auth/services/auth/auth.service';
import { Router } from '@angular/router';
import { AlertifyService } from '../../services/alertify/alertify.service';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.css']
})
export class NavComponent implements OnInit {

  constructor(public authService: AuthService, private router: Router, private alertify: AlertifyService) { }

  ngOnInit() {
  }

  loggedIn() {
    return this.authService.loggedIn();
  }

  logout() {
    localStorage.removeItem('access_token');
    this.alertify.message('Hasta luego');
    this.router.navigate(['login']);
  }

}
