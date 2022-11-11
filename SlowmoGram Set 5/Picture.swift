//
//  Picture.swift
//  SlowmoGram Set 5
//
//  Created by Swope, Thomas on 10/17/22.
//

import Foundation

class Picture: ObservableObject{
    @Published var imageName: String
    @Published var liked: Bool
    
    init(_ imageName: String = "bike1", liked: Bool = false){
        self.imageName = imageName
        self.liked = liked
    }
}
