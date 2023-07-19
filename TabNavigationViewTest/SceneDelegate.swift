//
//  SceneDelegate.swift
//  TabNavigationViewTest
//
//  Created by 정유진 on 2023/07/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     
        //탭카운터 앱을 만들고 탭1에 +1 탭2에 +2 기능을, 탭3에 화씨 -> 섭씨 탭4에 섭씨 -> 화씨 다섯번째 탭을 더 붙일 수 있다면 한가운데 버튼 누르면 다음 화면 넘어가는 네비게이션
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let firstViewController = UINavigationController(rootViewController: FirstViewController())
        firstViewController.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "pencil.circle"), tag: 0)
        
        let secondViewContoller = UINavigationController(rootViewController: SecondViewController())
        secondViewContoller.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "eraser.fill"), tag: 0)
        
        
        let thirdViewController = UINavigationController(rootViewController: ThirdViewController())
        thirdViewController.tabBarItem = UITabBarItem(title: "Third", image: UIImage(systemName: "pencil"), tag: 0)
        
        let fourthViewController = UINavigationController(rootViewController: FourthViewController())
        fourthViewController.tabBarItem = UITabBarItem(title: "Fourth", image: UIImage(systemName: "pencil"), tag: 0)
        
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstViewController, secondViewContoller, thirdViewController, fourthViewController]
        
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

