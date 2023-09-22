//
//  ContentView.swift
//  SwiftUIWebViewApp
//
//  Created by Salvatore Palazzo on 2023-09-22.
//

import SwiftUI

struct ContentView: View {
    @State var showingWebView = false

    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Button(action: {
                        self.showingWebView.toggle()
                    }, label: {
                        Text("Open WebView")
                    })

                    if showingWebView {
                        // show webview
                        WebView(url: URL(string: "https://www.apple.com")!)
                    }
                }
            }
            .navigationTitle("WebView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

