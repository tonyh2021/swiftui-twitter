//
//  FeedView.swift
//  SwiftUITwitter
//
//  Created by Tony on 2023-05-10.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showTweetButton: Bool = false
    
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20, id: \.self) { index in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                showTweetButton.toggle()
            } label: {
                Image("tweet_post_write")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showTweetButton) {
                Text("New tweet view")
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
