//
//  LoginCredentials.swift
//  MySampleApp
//
//
// Copyright 2020 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.21
//

import Foundation
import UIKit
import AWSDynamoDB

class LoginCredentials: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _username: String?
    var _firstName: String?
    var _lastName: String?
    var _phoneNumber: String?
    
    class func dynamoDBTableName() -> String {

        return "pathway-mobilehub-1810107641-LoginCredentials"
    }
    
    class func hashKeyAttribute() -> String {

        return "_username"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_username" : "Username",
               "_firstName" : "FirstName",
               "_lastName" : "LastName",
               "_phoneNumber" : "PhoneNumber",
        ]
    }
}
