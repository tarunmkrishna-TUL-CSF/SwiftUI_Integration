//
//  CustomRowViewCell.swift
//  SwiftUI_Integration
//
//  Created by Tarun M Krishna on 21/11/22.
//

import Foundation
import UIKit
import SwiftUI

class CustomRowViewCell: UITableViewCell {
    init() {
        super.init(style: .default, reuseIdentifier: "swiftUI")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "swiftUI")
    }
    
    func setUpSwiftUIAsCell<T>(viewSwiftUI: T) where T: View {
        let vc = UIHostingController(rootView: viewSwiftUI)
        contentView.addSubview(vc.view)
        layoutIfNeeded()
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vc.view.topAnchor.constraint(equalTo: contentView.topAnchor),
            vc.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vc.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            vc.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        vc.view.backgroundColor = .clear
        accessoryType = .none
        selectionStyle = .default
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
