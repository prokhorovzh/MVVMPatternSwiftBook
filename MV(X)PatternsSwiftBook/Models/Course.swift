//
//  Cource.swift
//  MV(X)PatternsSwiftBook
//
//  Created by Евгений Прохоров on 15.02.2021.
//

import Foundation

struct Course: Decodable {
    let name: String?
    let imageUrl: URL?
    let numberOfLessons: Int?
    let numberOfTests: Int?
}
