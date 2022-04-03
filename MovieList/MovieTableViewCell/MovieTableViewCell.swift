//
//  MovieTableViewCell.swift
//  MovieList
//
//  Created by Shovo on 3/4/22.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieLanguage: UILabel!

    var movieInfo : MovieDetails? {
        didSet {
            movieTitle.text = movieInfo?.title
            movieLanguage.text = movieInfo?.original_language
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
