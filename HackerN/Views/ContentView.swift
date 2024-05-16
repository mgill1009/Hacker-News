//
//  ContentView.swift
//  HackerN
//
//  Created by Manpreet Gill on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }

                
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
