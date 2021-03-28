//
//  Language.swift
//  CodLang
//
//  Created by Алексей Филатов on 26.03.2021.
//

import Foundation
import UIKit

struct Language {
    let title: String
    let description: String
    let image: UIImage?
    
    init(title: String, description: String, image: UIImage?) {
        self.title = title
        self.description = description
        self.image = image
    }
}

