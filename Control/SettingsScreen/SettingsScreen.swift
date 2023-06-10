//
//  SettingsScreen.swift
//  Control
//
//  Created by Максим Комар on 27.05.23.
//

import UIKit

class SettingsScreen: UIViewController {
    
    private let settingsBackground = UIView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        settingsBackgroundConfig()
    }
    
    func settingsBackgroundConfig() {
        settingsBackground.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(settingsBackground)
        NSLayoutConstraint.activate([
            settingsBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            settingsBackground.topAnchor.constraint(equalTo: view.topAnchor),
            settingsBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            settingsBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        settingsBackground.backgroundColor = UIColor(named: "backgoundColor")
    }
    



}
