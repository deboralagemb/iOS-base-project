//
//  MainViewController.swift
//  XibPractices
//
//  Created by Debora Lage Moreira Barbosa on 19/12/23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Initialization
    init() {
        super.init(nibName: String(describing: MainViewController.self), bundle: nil)
    }

    required init?(coder decoder: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
