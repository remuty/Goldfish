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
        let feedingTime = 8
        let calendar = Calendar(identifier: .gregorian)
        let now = Date()
        let nowDC = calendar.dateComponents([.year, .month, .day,.hour], from: now)
        var nextDay = Date()
        var nextDayDC = DateComponents()
        var next = Date()
        if nowDC.hour! >= feedingTime{
            nextDay = calendar.date(byAdding: .day, value: 1, to: now)!
            nextDayDC = calendar.dateComponents([.year, .month, .day], from: nextDay)
            next = calendar.date(from: DateComponents(year: nextDayDC.year, month: nextDayDC.month, day: nextDayDC.day, hour: feedingTime))!
        }else{
            next = calendar.date(from: DateComponents(year: nowDC.year, month: nowDC.month, day: nowDC.day, hour: feedingTime))!
        }
        //次の時間までの差
        let diff = calendar.dateComponents([.second], from: now, to: next)
        
        // 書式を設定する
        let formatter = DateComponentsFormatter()
        // 表示単位を指定
        formatter.unitsStyle = .positional
        // 表示する時間単位を指定
        formatter.allowedUnits = [.hour, .minute, .second]
        self.nextTime = formatter.string(from: diff)!
    }
}
