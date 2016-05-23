//
//  CustomErrorType.swift
//  ProcessTestSummaries
//
//  Created by Teodor Nacu on 23/05/16.
//  Copyright © 2016 Teo. All rights reserved.
//

import Foundation

enum CustomErrorType: ErrorType {
    case InvalidArgument(error: String)
    case InvalidState(error: String)

    var error: String {
        return "[Error] \(self)"
    }

    func throwsError() throws {
        print(error)
        throw self
    }
}