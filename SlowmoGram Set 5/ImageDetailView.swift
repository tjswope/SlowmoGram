//
//  ImageDetailView.swift
//  SlowmoGram Set 5
//
//  Created by Swope, Thomas on 10/17/22.
//

import SwiftUI

struct ImageDetailView: View {
   
    @Binding var picture: Picture
    
    var body: some View {
        
        ZStack{
            Image(picture.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .center)
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

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(picture: Binding.constant(Picture("bike1")))
    }
}
