//
//  DetailView.swift
//  HackerN
//
//  Created by Manpreet Gill on 2024-05-15.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

