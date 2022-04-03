//
//  APIService.swift
//  TopMovies
//
//  Created by Shovo on 2/4/22.
//

import Foundation

class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=10496d6109a936ccfe0c273d8d51a499&language=en-US&page=1")!
    func apiToGetMovieData(completion : @escaping (MovieList) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let empData = try! jsonDecoder.decode(MovieList.self, from: data)
                completion(empData)
            }
            
        }.resume()
    }
    
}
