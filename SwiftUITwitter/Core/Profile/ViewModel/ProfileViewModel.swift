//
//  ProfileViewModel.swift
//  SwiftUITwitter
//
//  Created by Tony on 2023-05-11.
//

import Foundation

enum TweetFilter: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}


class ProfileViewModel {
    
    
    
}
