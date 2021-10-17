//
//  ChatModel.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/09/27.
//

import Foundation

class ChatModel: ObservableObject {
    var text = ""
    @Published var arrayOfMessages : [String] = []
    @Published var arrayOfPositions : [BubblePosition] = []
    @Published var position = BubblePosition.right
}
