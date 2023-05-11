//
//  TweetRowView.swift
//  SwiftUITwitter
//
//  Created by Tony on 2023-05-10.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            firstRowView
            
            // action buttons
            buttonView
            
            Divider()
        }
    }
}

extension TweetRowView {
    private var firstRowView: some View {
        // profle image + user info tweet
        HStack(alignment: .top, spacing: 12) {
            Circle()
                .frame(width: 56, height: 56)
                .foregroundColor(Color(.systemBlue))
            //
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Bruce Wayne")
                        .font(.subheadline).bold()
                    Text("@batman")
                        .foregroundColor(.gray)
                        .font(.caption)
                    Text("2w")
                        .foregroundColor(.gray)
                        .font(.caption)
                }
                
                // tweet caption
                Text("I believe in Harvey Dent")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
            }
        }
    }
    
    private var buttonView: some View {
        HStack {
            Button {
                print("tapped...")
            } label: {
                Image(systemName: "bubble.left")
                    .font(.subheadline)
            }
            Spacer()
            Button {
                print("tapped...")
            } label: {
                Image(systemName: "arrow.2.squarepath")
                    .font(.subheadline)
            }
            Spacer()
            Button {
                print("tapped...")
            } label: {
                Image(systemName: "heart")
                    .font(.subheadline)
            }
            Spacer()
            Button {
                print("tapped...")
            } label: {
                Image(systemName: "bookmark")
                    .font(.subheadline)
            }
        }
        .foregroundColor(.gray)
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
