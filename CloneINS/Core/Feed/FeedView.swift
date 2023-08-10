//
//  FeedView.swift
//  CloneINS
//
//  Created by Dream K on 8/9/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self){ post in
                        FeedCell()
                
                    }
                }
                .padding(.top, 8)
            }
            .navigationBarTitle("Feed", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("instagram-logo-1")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
