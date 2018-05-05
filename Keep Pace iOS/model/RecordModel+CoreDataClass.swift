//
//  RecordModel+CoreDataClass.swift
//  Keep Pace iOS
//
//  Created by Quincy on 2018-04-30.
//  Copyright © 2018 Daniel Katz. All rights reserved.
//
//

import Foundation
import CoreData

//@objc(RecordModel)
public class RecordModel: NSManagedObject {
    //Data Initializer Method for Record Model
    public override func awakeFromInsert() {
        
        mId = -1
        mAveragePace = 0.0
        mTime = 0
        mDate = ""
    }
}
