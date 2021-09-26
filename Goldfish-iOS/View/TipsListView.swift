//
//  TipsListView.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/26.
//

import SwiftUI

struct TipsListView: View {
    var body: some View {
        NavigationView {
            List(1..<20) { i in
                NavigationLink(destination: TipsView(title: "豆知識\(i)")) {
                    Text("豆知識のタイトル\(i)")
                }
            }.navigationTitle("金魚飼育の豆知識")
        }
    }
}

struct TipsListView_Previews: PreviewProvider {
    static var previews: some View {
        TipsListView()
    }
}
