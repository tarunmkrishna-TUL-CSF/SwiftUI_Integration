//
//  BasicUIViewRepresentable.swift
//  SwiftUI_Integration
//
//  Created by Tarun M Krishna on 21/11/22.
//

import Foundation
import SwiftUI

struct BasicUIViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> SwiftUIKitTableViewCell {
        let nib = UINib(nibName: "SwiftUIKitTableViewCell", bundle: nil)
        let cell = nib.instantiate(withOwner: nil).first as! SwiftUIKitTableViewCell
        return cell
    }
    
    func updateUIView(_ uiView: SwiftUIKitTableViewCell, context: Context) {
        uiView.contentLabel.text = "Top 5 t20i Run scorers"
        uiView.contentLabel.textAlignment = .center
    }
}
