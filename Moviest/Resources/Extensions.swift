//
//  Extensions.swift
//  Moviest
//
//  Created by Nankun Xu on 3/20/24.
//

import Foundation

extension String {
    //First letter Upper Class
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
