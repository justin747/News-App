//
//  ResultState.swift
//  News App
//
//  Created by Justin747 on 10/15/21.
//

import Foundation

enum ResultState {
    case loading
    case success (content: [Article])
    case failed(error: Error)
}
