//
//  TabBarViewController.swift
//  XibPractices
//
//  Created by Debora Lage Moreira Barbosa on 19/12/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabs()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Adapte essa função para o seu contexto
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .white
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.green]
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor.green
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.black
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance

        guard let items = tabBar.items else { return }
        items[0].image = UIImage(systemName: "house")
        items[0].title = "Tab 1"
        
        items[1].image = UIImage(systemName: "fork.knife")
        items[1].title = "Tab 2"
    }

    func setTabs() {
        // Adapte essa função para o seu contexto
        let charactersNavigation = UINavigationController()
        let episodesNavigation = UINavigationController()
        
        let charactersController = MainViewController()
        let episodeController = MainViewController()
        
        charactersController.view.backgroundColor = .red
        episodeController.view.backgroundColor = .green
        
        charactersNavigation.setViewControllers([charactersController], animated: true)
        episodesNavigation.setViewControllers([episodeController], animated: true)
        
        setViewControllers([charactersNavigation, episodesNavigation], animated: true)
    }
}
