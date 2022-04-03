//
//  ViewController.swift
//  MovieList
//
//  Created by Shovo on 3/4/22.
//

import UIKit

class ViewController: UIViewController {
    private var apiService : APIService!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.apiService =  APIService()
        self.apiService.apiToGetEmployeeData { MovieList in
            print(MovieList);
        }
    }


}

