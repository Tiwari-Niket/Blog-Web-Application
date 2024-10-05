import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment.development';
import { HttpClient } from '@angular/common/http';
import { Observable, tap } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  backendUrl = environment.backendUrl;

  constructor(private http: HttpClient) { }

  getAllFeed(): Observable<any> {
    return this.http.get<any>(`${this.backendUrl}/allFeed`);
  }

  getFeed(): Observable<any> {
    const data = {
      userID: localStorage.getItem('UserID')
    }
    return this.http.post<any>(`${this.backendUrl}/feedByUserId`, data);
  }

  login(username: string, password: string): Observable<any> {
    const data = {
      UserName: username,
      password: password
    }
    return this.http.post<any>(`${this.backendUrl}/login`, data).pipe(
      tap(response => {
        localStorage.setItem('UserID', response.userID);
        localStorage.setItem('UserName', response.userName);
      })
    );
  }

  addPost(title: string, description: string): Observable<any> {
    const data = {
      userId: localStorage.getItem("UserID"),
      title: title,
      description: description
    }
    return this.http.post<any>(`${this.backendUrl}/addFeed`, data);
  }

  updatePost(title: string, description: string, postId: number): Observable<any> {
    const data = {
      postId: postId,
      userId: localStorage.getItem("UserID"),
      title: title,
      description: description
    }
    return this.http.put<any>(`${this.backendUrl}/updateFeed`, data);
  }

  deletePost(postId: number): Observable<any> {
    const data = {
      postId: postId
    };
    return this.http.post<any>(`${this.backendUrl}/deleteFeed`,data);
  }

  // deletePost(postId: number): Observable<any> {
  //   return this.http.delete<any>(`${this.backendUrl}/deleteFeed`, {
  //     params: { postId: postId.toString() }
  //   });
  // }

  isLoggedIn(): boolean {
    return !!localStorage.getItem('UserID');
  }

}
