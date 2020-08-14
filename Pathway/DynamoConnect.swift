//
//  DynamoConnect.swift
//  CognitoApplication
//
//  Created by Elan Kainen on 8/14/20.
//  Copyright © 2020 Elan Kainen. All rights reserved.
//

import Foundation
import AWSDynamoDB

class DynamoConnect {
    func postToDB(trajObj: AWSDynamoDBObjectModel & AWSDynamoDBModeling){
        let dynamoDBObjectMapper = AWSDynamoDBObjectMapper.default()
        
        dynamoDBObjectMapper.save(trajObj)
            
            .continueWith(block: { (task:AWSTask<AnyObject>!) -> Any? in
                if (task.error as NSError?) != nil {
                    print("The request failed. Error: [%@]", task.error!);
                }
                if ((task.result) != nil) {
                    print("success")
                }
                return nil
            })
    }
}
