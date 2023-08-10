//
//  SearchView.swift
//  CloneINS
//
//  Created by Dream K on 8/9/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(0 ... 15, id: \.self){ user in
                        HStack{
                            Image("panda")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("panda")
                                    .fontWeight(.semibold)
                                
                                Text("Bruce Li")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationBarTitle("Explore", displayMode: .inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
