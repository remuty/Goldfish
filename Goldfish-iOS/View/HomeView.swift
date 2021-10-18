//
//  HomeView.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/25.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var time = Time()
    var body: some View {
        GeometryReader { geometry in
            VStack(){
                HStack(){
                    Image("kingyo_esa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50.0, height: 60.0)
                    VStack{
                        Text("次のエサやりまであと")
                        Text(time.nextTime)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                }
                Image("Goldfish")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:geometry.size.width)
            }.onAppear(perform: {
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                    self.time.calculateTime()
                }})
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
