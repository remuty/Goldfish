//
//  TipsView.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/26.
//

import SwiftUI

struct TipsView: View {
    var title: String
    var bodyText = "豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文豆知識の本文"
    var body: some View {
        VStack(){
            Text(title)
                .font(.largeTitle)
            Divider()
            Text(bodyText)
            Spacer()
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView(title: "タイトル")
    }
}
