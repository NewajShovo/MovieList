//
//  MovieListViewModel.swift
//  MovieList
//
//  Created by Shovo on 3/4/22.
//

import Foundation

class MovieListViewModel : NSObject {
    private var apiService : APIService!
    private(set) var movieData : MovieList! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetMovieData{ MovieList in
            self.movieData = MovieList
        }
    }
}
