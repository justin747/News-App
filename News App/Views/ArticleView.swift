//
//  ArticleView.swift
//  News App
//
//  Created by Justin747 on 10/17/21.
//

import SwiftUI
import URLImage
import URLImageStore

struct ArticleView: View {
    let article: Article
    
    
    var body: some View {
        HStack {
            
            if let imgUrl = article.image, let url = URL(string: imgUrl) {
                
                URLImage(url: url,
                         options: URLImageOptions(indentifier: article.id.uuid,
                            cachePolicy: .returnStoreElseLoad(downloadDelay: 0.25)
                         ),
                         content: { image in
                    
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                })
                
            } else {
                
            }
            
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData)
    }
}
