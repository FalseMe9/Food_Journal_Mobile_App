//
//  Item.swift
//  Food_Journal_Mobile_App
//
//  Created by Billie H on 23/04/25.
//

import Foundation
import SwiftUI
struct Item : Codable{
    var photo : UIImage?{
        get{
            guard let data else{return nil}
            return UIImage(data: data)
        }
        set{data = newValue?.pngData()}
    }
    var description : String
    var data : Data?
    enum CodingKeys: CodingKey {
        case description
        case data
    }
}
