//
//  NewsService.swift
//  News App
//
//  Created by Justin747 on 10/15/21.
//

import Foundation
import Combine

protocol NewsService {
    func request(from endpoint: NewsAPI) -> AnyPublisher<NewsResponse, APIError>
    
}
