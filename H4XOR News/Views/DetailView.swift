//
//  DetailView.swift
//  H4XOR News
//
//  Created by Rami Del Toro on 10/9/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}



#Preview {
    DetailView(url: "https://www.google.com")
}
