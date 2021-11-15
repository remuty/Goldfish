//
//  SNSView.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/27.
//

import SwiftUI

struct SNSView: View {
    @ObservedObject var model = ChatModel()
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("飼育記録")
                    .font(.largeTitle)
                Divider()
                //ScrollView
                CustomScrollView(scrollToEnd: true) {
                    LazyVStack {
                        ForEach(0..<model.arrayOfMessages.count, id:\.self) { index in
                            ChatBubble(position: model.arrayOfPositions[index], color: model.arrayOfPositions[index] == BubblePosition.right ?.accentColor : .gray) {
                                Text(model.arrayOfMessages[index])
                            }
                        }
                    }
                }
                //TextEditor
                HStack {
                    ZStack {
                        TextEditor(text: $model.text)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .foregroundColor(.gray)
                    }.frame(height: 50)
                    Button(action: {
                        if model.text != "" {
                            model.position = model.position == BubblePosition.right ? BubblePosition.left : BubblePosition.right
                            model.arrayOfPositions.append(model.position)
                            model.arrayOfMessages.append(model.text)
                            model.text = ""
                        }
                    }) {
                        Image(systemName: "paperplane.fill")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                    }
                }.padding()
            }
        }
    }
}


struct SNSView_Previews: PreviewProvider {
    static var previews: some View {
        SNSView()
    }
}
