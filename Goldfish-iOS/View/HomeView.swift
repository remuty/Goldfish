//
//  HomeView.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(){
                HStack(){
                    Image("kingyo_esa")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 50.0, height: 60.0)
                    VStack{
                        Text("次のエサやりまであと")
                        Text("3:18:45") //TODO:端末の時間に合わせて変動させる
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                }
                Image("Goldfish")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width:geometry.size.width)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
