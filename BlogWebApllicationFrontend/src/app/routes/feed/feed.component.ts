import { Subject, takeUntil } from 'rxjs';
import { ApiService } from './../../shared/service/api.service';
import { Component, OnDestroy, OnInit } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';
import { AllFeed } from '../../shared/models/allFeeds';
import {MatCardModule} from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
@Component({
  selector: 'app-feed',
  standalone: true,
  imports: [MatCardModule, MatIconModule],
  templateUrl: './feed.component.html',
  styleUrl: './feed.component.scss'
})
export class FeedComponent implements OnInit, OnDestroy{
  allFeed!: AllFeed[];
  protected _onDestroy = new Subject<void>();

constructor(private apiService: ApiService){}

ngOnInit(): void {
  this.getFeed();
}

getFeed(){
  this.apiService.getAllFeed().pipe(takeUntil(this._onDestroy)).subscribe({
    next: (res: any) => {
      this.allFeed=res;
    },
    error: (error: HttpErrorResponse) => {
      console.log(error);
    }
  })
}

myFunction(event: Event): void{
  const form = event.target as HTMLFormElement;
  form.classList.toggle("fa-thumbs-down");
}

ngOnDestroy(): void {
  this._onDestroy.next();
  this._onDestroy.complete();
}
}
