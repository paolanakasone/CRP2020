import { CanActivate, Router } from '@angular/router';
import { AuthService } from '../../auth/services/auth/auth.service';
import { AlertifyService } from '../services/alertify/alertify.service';
import { Injectable } from '@angular/core';

@Injectable({
    providedIn: 'root'
})
export class AuthGuard implements CanActivate {
    constructor(private authService: AuthService, private router: Router, private alertify: AlertifyService) {}

    canActivate(): boolean {
        if (this.authService.loggedIn()) {
            return true;
        }

        this.alertify.error('No se encuentra logeado');
    }
    
}