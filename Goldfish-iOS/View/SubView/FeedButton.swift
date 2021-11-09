//
//  FeedButton.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/11/09.
//

import SwiftUI

struct FeedButton: View {
    var body: some View {
        ZStack(){
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(Color.yellow)
                .frame(width: 120.0, height: 120.0)
            Image(systemName: "arrow.up.heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.pink)
                .padding(.top, 10.0)
                .frame(width: 90.0, height: 100.0)
        }
    }
}

struct FeedButton_Previews: PreviewProvider {
    static var previews: some View {
        FeedButton()
    }
}
