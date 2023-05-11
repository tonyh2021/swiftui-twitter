//
//  SideMenuOptionView.swift
//  SwiftUITwitter
//
//  Created by Tony on 2023-05-11.
//

import SwiftUI

struct SideMenuOptionView: View {
    
    let option: SideMenuOption
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: option.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(option.title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(option: .profile)
    }
}
