import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../shared/service/api.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-authentication',
  standalone: true,
  imports: [],
  templateUrl: './authentication.component.html',
  styleUrl: './authentication.component.scss'
})
export class AuthenticationComponent implements OnInit {
  errorMessage: string | null = null;
  UserID!: string | null;
  constructor(private apiService: ApiService, private router: Router) { }

  ngOnInit(): void {
    this.UserID = localStorage.getItem("UserID");
    if (this.UserID != null) {
      this.router.navigate(['/feed']);
    }
  }

  onSubmit(event: Event): void {
    event.preventDefault();

    const form = event.target as HTMLFormElement;
    const username = (form.elements.namedItem('username') as HTMLInputElement).value;
    const password = (form.elements.namedItem('password') as HTMLInputElement).value;

    this.apiService.login(username, password).subscribe(success => {
      if (success != null) {
        this.router.navigate(['/feed']);
        window.location.reload();
      }
    });
  }
}
