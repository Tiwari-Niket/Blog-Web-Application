import { Component, OnDestroy, OnInit } from '@angular/core';
import { ApiService } from '../../shared/service/api.service';
import { Subject, takeUntil } from 'rxjs';
import { HttpErrorResponse } from '@angular/common/http';
import { AllFeed } from '../../shared/models/allFeeds';
import { MatCardModule } from '@angular/material/card';
@Component({
  selector: 'app-dashboard',
  standalone: true,
  imports: [MatCardModule],
  templateUrl: './dashboard.component.html',
  styleUrl: './dashboard.component.scss'
})
export class DashboardComponent implements OnInit, OnDestroy {
  protected _onDestroy = new Subject<void>();
  userFeed!: AllFeed[];
  modal: boolean = false;
  modal2: boolean = false;
  id!: number;
  constructor(private apiService: ApiService) { }

  ngOnInit(): void {
    this.getUserFeed();
  }

  openModal2() {
    this.modal2 = true;
  }

  openModal() {
    this.modal = true;
  }

  getUserFeed() {
    this.apiService.getFeed().pipe(takeUntil(this._onDestroy)).subscribe({
      next: (res: any) => {
        this.userFeed = res;
      },
      error: (error: HttpErrorResponse) => {
        console.log(error);
      }
    })
  }

  delete(postId: number) {
    this.apiService.deletePost(postId).subscribe();
    this.getUserFeed();
    window.location.reload();
  };

  onSubmit(event: Event): void {
    event.preventDefault();
    this.modal = false;
    const form = event.target as HTMLFormElement;
    const title = (form.elements.namedItem('title') as HTMLInputElement).value;
    const description = (form.elements.namedItem('description') as HTMLInputElement).value;

    this.apiService.addPost(title, description).subscribe();
    this.getUserFeed();
    window.location.reload();
  }

  onUpdate(event: Event, postId: number): void {
    event.preventDefault();
    this.modal2 = false;
    const form = event.target as HTMLFormElement;
    const title = (form.elements.namedItem('title') as HTMLInputElement).value;
    const description = (form.elements.namedItem('description') as HTMLInputElement).value;
    this.id = postId.valueOf();
    this.apiService.updatePost(title, description, this.id).subscribe();
    this.getUserFeed();
    window.location.reload();
  }

  ngOnDestroy(): void {
    this._onDestroy.next();
    this._onDestroy.complete();
  }
}
