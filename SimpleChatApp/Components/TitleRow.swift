//
//  TitleRow.swift
//  SimpleChatApp
//
//  Created by Maliks.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://source.unsplash.com/cIEb4UJ4ruk")
    var name = "Alice"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: self.imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(self.name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }.padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("SecondaryColor"))
    }
}
