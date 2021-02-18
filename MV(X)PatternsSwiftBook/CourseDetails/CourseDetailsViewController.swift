//
//  CourceDetailsViewController.swift
//  MV(X)PatternsSwiftBook
//
//  Created by Евгений Прохоров on 15.02.2021.
//

import UIKit

class CourseDetailsViewController: UIViewController {
    
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var numberOfLessonsLabel: UILabel!
    @IBOutlet private weak var numberOfTestsLabel: UILabel!
    @IBOutlet private weak var courseImage: UIImageView!
    @IBOutlet private weak var favoriteButton: UIButton!
    
    var viewModel: CourseDetailsViewModelProtocol!
    
    private var isFavorite = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel)
        setupUI()
    }
    
    @IBAction func toggleFavorite(_ sender: UIButton) {
        viewModel.changeFavoriteStatus()
        setImageForFavoriteButton()
    }
    
    private func setupUI() {
        viewModel.isFavorite.bind { [unowned self] isFavorite in
            self.isFavorite = isFavorite
        }
        setImageForFavoriteButton()
        courseNameLabel.text = viewModel.courseName
        numberOfLessonsLabel.text = viewModel.numberOfLessons
        numberOfTestsLabel.text = viewModel.numberOfTests
        guard let imageData = viewModel.imageData else { return }
        courseImage.image = UIImage(data: imageData)
    }
    
    private func setImageForFavoriteButton() {
        favoriteButton.tintColor = isFavorite ? .red : .gray
    }
}

