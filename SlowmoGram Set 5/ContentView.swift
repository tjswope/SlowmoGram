//
//  ContentView.swift
//  SlowmoGram Set 5
//
//  Created by Swope, Thomas on 10/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var pictures: [Picture] = [Picture("bike1"),
                               Picture("bike2"),
                               Picture("bike3"),
                               Picture("bike4")]
    
    @State var pictureIndex: Int = 0
    @State var showSheet = false
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach($pictures.indices){ index in
                    NavigationLink {
                        ImageDetailView(picture: $pictures[index])
                    } label: {
                        ImageListView(picture: $pictures[index])
                    }

                }
            }.navigationTitle("SlowmoGram")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
