//
//  ViewController.swift
//  MovieList
//
//  Created by Shovo on 3/4/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var movieListTableView: UITableView!

    private var movieListViewModel : MovieListViewModel!
    private var dataSource : MovieListTableViewDataSource <MovieTableViewCell, MovieDetails>!

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate(){
        self.movieListViewModel = MovieListViewModel()
        self.movieListViewModel.bindEmployeeViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        self.dataSource = MovieListTableViewDataSource(cellIdentifier: "MovieTableViewCell", items: self.movieListViewModel.movieData.results, configureCell: { (cell, evm) in
            cell.movieTitle.text = evm.title
            cell.movieLanguage.text = evm.original_language
        })

        DispatchQueue.main.async {
            self.movieListTableView.dataSource = self.dataSource
            self.movieListTableView.delegate = self
            self.movieListTableView.reloadData()
        }
    }


}

