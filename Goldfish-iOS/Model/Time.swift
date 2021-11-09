//
//  Timer.swift
//  Goldfish-iOS
//
//  Created by remuty on 2021/10/17.
//

import Foundation

class Time: ObservableObject {
    @Published var nextTime = ""
    @Published var isFeed = false
    let feedingTime = 12
    
    //次のエサやりまでの時間を計算
    func calculateTime() {
        let calendar = Calendar(identifier: .gregorian)
        let now = Date()
        let nowDC = calendar.dateComponents([.year, .month, .day,.hour], from: now)
        var next = Date()
        //次の時間を設定
        if nowDC.hour! >= feedingTime || isFeed == true{
            let nextDay = calendar.date(byAdding: .day, value: 1, to: now)!
            let nextDayDC = calendar.dateComponents([.year, .month, .day], from: nextDay)
            next = calendar.date(from: DateComponents(year: nextDayDC.year, month: nextDayDC.month, day: nextDayDC.day, hour: feedingTime))!
        }else{
            next = calendar.date(from: DateComponents(year: nowDC.year, month: nowDC.month, day: nowDC.day, hour: feedingTime))!
        }
        //次の時間までの差
        let diff = calendar.dateComponents([.second], from: now, to: next)
        // 書式を設定
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional  // 表示単位を指定
        formatter.allowedUnits = [.hour, .minute, .second]  // 表示する時間単位を指定
        
        self.nextTime = formatter.string(from: diff)!
    }
}
