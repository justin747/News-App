//
//  NewsResponse.swift
//  News App
//
//  Created by Justin747 on 10/12/21.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}


extension Article {
    
    static var dummyData: Article {
        .init(author: "Emma Newburger",
              url: "https://www.cnbc.com/2021/10/19/bidens-climate-agenda-at-risk-as-democrats-negotiate-budget-bill-.html",
              source: "CNBC",
              title: "Biden's climate agenda at risk as Democrats negotiate budget bill - CNBC",
              articleDescription: "Fighting climate change has been a main component of the president's \"Build Back Better\" agenda.",
              image: "https://image.cnbcfm.com/api/v1/image/106952352-1633434834702-gettyimages-1235699678-CONGRESS_DEBT_LIMIT.jpeg?v=1633434874",
              date: Date())
    }
}


//"author": "Emma Newburger",
//          "url": "https://www.cnbc.com/2021/10/19/bidens-climate-agenda-at-risk-as-democrats-negotiate-budget-bill-.html",
//          "source": "CNBC",
//          "title": "Biden's climate agenda at risk as Democrats negotiate budget bill - CNBC",
//          "description": "Fighting climate change has been a main component of the president's \"Build Back Better\" agenda.",
//          "image": "https://image.cnbcfm.com/api/v1/image/106952352-1633434834702-gettyimages-1235699678-CONGRESS_DEBT_LIMIT.jpeg?v=1633434874",
//          "date": "2021-10-19T21:00:31Z"
