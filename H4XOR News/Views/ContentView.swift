//
//  ContentView.swift
//  H4XOR News
//
//  Created by Rami Del Toro on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }

            }
            .navigationTitle("H4XOR News")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//
//]

#Preview {
    ContentView()
}
