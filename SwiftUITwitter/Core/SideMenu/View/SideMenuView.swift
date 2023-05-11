//
//  SideMenuView.swift
//  SwiftUITwitter
//
//  Created by Tony on 2023-05-11.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                 
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                       .font(.headline)
                    Text("@batman")
                      .font(.caption)
                      .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            
            ForEach(SideMenuOption.allCases, id: \.rawValue) { option in
                
                if option == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionView(option: option)
                    }
                } else if option == .logout {
                    Button {
                        print("tapped...")
                        
                    } label: {
                        SideMenuOptionView(option: option)
                    }
                } else {
                    SideMenuOptionView(option: option)
                }
            }

            
            Spacer()
        }
        .padding(.horizontal)
    }
}

extension SideMenuView {
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
