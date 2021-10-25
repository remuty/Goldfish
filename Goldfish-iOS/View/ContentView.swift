//
//  ContentView.swift
//  Goldfish-iOS
//
//  Created by remuty.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeView().tabItem {
                Image(systemName: "house")
            }.tag(1)
            TipsListView().tabItem {
                Image(systemName: "lightbulb")
            }.tag(2)
            SNSView().tabItem {
                Image(systemName: "message")
            }.tag(3)
        }.accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
