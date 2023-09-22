//
//  SwiftUIWebView.swift
//  SwiftUIWebViewApp
//
//  Created by Salvatore Palazzo on 2023-09-22.
//

import Foundation
import SwiftUI
import UIKit
import WebKit

struct WebView: UIViewRepresentable {
    typealias UIViewType = UIView

    var url: URL

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        webview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(webview)

        NSLayoutConstraint.activate([
            webview.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            webview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            webview.centerXAnchor.constraint(equalTo: webview.centerXAnchor),
            webview.centerYAnchor.constraint(equalTo: webview.centerYAnchor),
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}
