//
//  ProfileView.swift
//  CloneINS
//
//  Created by Dream K on 8/8/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image("black-panther-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 65, title: "Followers")
                            
                            UserStatView(value: 56, title: "Following")
                        
                            
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Chadwick Bozeman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                    
                    // action button
                    Button {
                        
                    } label: {
                        Text("Edit Profilr")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 392, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    
                    Divider()
                }
                
                
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1 ){
                    ForEach(0 ... 14, id: \.self) { index in
                        Image("smile")
                            .resizable()
                            .scaledToFill()
                    }
                }
                    
            }
            .navigationBarTitle("Profile", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
