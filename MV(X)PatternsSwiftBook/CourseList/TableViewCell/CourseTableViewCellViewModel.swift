//
//  CourseTableViewCellViewModel.swift
//  MV(X)PatternsSwiftBook
//
//  Created by Евгений Прохоров on 15.02.2021.
//

import Foundation

protocol CourseTableViewCellViewModelProtocol {
    var courseName: String { get }
    var imageData: Data? { get }
    
    init(course: Course)
}

class CourseTableViewCellViewModel: CourseTableViewCellViewModelProtocol {
    var courseName: String {
        cource.name ?? ""
    }
    
    var imageData: Data? {
        ImageManager.shared.fetchImageData(from: cource.imageUrl)
    }
    
    private let cource: Course
    
    required init(course: Course) {
        self.cource = course
    }
    
    
}
