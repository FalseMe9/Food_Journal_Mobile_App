//
//  Model.swift
//  Food_Journal_Mobile_App
//
//  Created by Billie H on 23/04/25.
//

import Foundation
@Observable
class Model{
    var items = [Item](){
        didSet{
            save()
        }
    }
    let url = URL.documentsDirectory.appending(path: "Items")
    func save(){
        do{
            let data = try JSONEncoder().encode(items)
            try data.write(to: url)
        }catch{
            print(error.localizedDescription)
        }
    }
    func load(){
        do{
            let data = try Data(contentsOf: url)
            items = try JSONDecoder().decode([Item].self, from: data)
        }catch{
            print(error.localizedDescription)
        }
    }
}
