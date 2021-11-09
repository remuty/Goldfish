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
                .foregroundColor(Color.orange)
                .frame(width: 120.0, height: 120.0)
            Image("kingyo_esa")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80.0, height: 80.0)
            Image(systemName: "arrow.up")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.green)
                .padding(.bottom, 60.0)
                .frame(width: 80.0, height: 110.0)
        }
    }
}

struct FeedButton_Previews: PreviewProvider {
    static var previews: some View {
        FeedButton()
    }
}
