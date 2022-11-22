//
//  ViewController.swift
//  SwiftUI_Integration
//
//  Created by Tarun M Krishna on 21/11/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tableView(_ sender: UIButton) {
        let vc = TableViewWithSwiftUICell()
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func openListImplementation(_ sender: UIButton) {
        let swiftHostingView = UIHostingController(rootView: ListSwiftUI(players: PlayerDataSource().players))
        navigationController?.pushViewController(swiftHostingView, animated: true)
    }
    
    @IBAction func pressNext(_ sender: UIButton) {
            let uiVC = UIHostingController(rootView: PresentingView(presentingVC: self))
            uiVC.view.backgroundColor = .clear
            uiVC.modalPresentationStyle = .overFullScreen
            present(uiVC, animated: true)
        }
}

