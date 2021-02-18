//
//  CourseListTableViewCell.swift
//  MV(X)PatternsSwiftBook
//
//  Created by Евгений Прохоров on 15.02.2021.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    var viewModel: CourseTableViewCellViewModelProtocol! {
        didSet {
            var content = defaultContentConfiguration()
            content.text = viewModel.courseName
            guard let imageData = viewModel.imageData else { return }
            content.image = UIImage(data: imageData)
            contentConfiguration = content
        }
    }
}
