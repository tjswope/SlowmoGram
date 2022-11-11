//
//  ImageListView.swift
//  SlowmoGram Set 5
//
//  Created by Swope, Thomas on 11/3/22.
//

import SwiftUI

struct ImageListView: View {
    
    @Binding var picture: Picture
    
    var body: some View {
        VStack {
            ZStack{
                Image(picture.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            picture.liked.toggle()
                        } label: {
                            Image(systemName: picture.liked ? "heart.fill" : "heart")
                                .font(.custom("Arial", fixedSize: 40))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.cyan.opacity(0.5))
                                .cornerRadius(10)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ImageListView_Previews: PreviewProvider {
    static var previews: some View {
        ImageListView(picture: Binding.constant(Picture("bike1")))
    }
}
