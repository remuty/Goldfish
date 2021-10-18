//
//  Timer.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/10/17.
//

import Foundation

class Time: ObservableObject {
    @Published var nextTime : String = ""
    func calculateTime() {
        let calendar = Calendar(identifier: .gregorian)
        let now = Date()
        let next = calendar.date(from: DateComponents(year: 2021, month: 10, day: 19, hour: 12))
        //次の時間までの差
        let diff = calendar.dateComponents([.second], from: now, to: next!)
        
        // 書式を設定する
        let formatter = DateComponentsFormatter()
        // 表示単位を指定
        formatter.unitsStyle = .positional
        // 表示する時間単位を指定
        formatter.allowedUnits = [.hour, .minute, .second]
        self.nextTime = formatter.string(from: diff)!
    }
    
}
