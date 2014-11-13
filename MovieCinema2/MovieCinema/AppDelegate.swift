//
//  AppDelegate.swift
//  MovieCinema
//
//  Created by RainSea on 11/12/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let listMovie = MainScreen(nibName:"MainScreen", bundle:nil)
        let navList = UINavigationController(rootViewController: listMovie)
        navList.tabBarItem = UITabBarItem(title: "Danh Sách", image: UIImage(named: "menu.png"), tag: 0)
        
        let locationMovie = LocationMovie()
        let navLocation = UINavigationController(rootViewController: locationMovie)
        navLocation.tabBarItem = UITabBarItem(title: "Địa Điểm", image: UIImage(named: "location-icon.png"), tag: 1)
        
        let hotMovie = HotMovie()
        let navHot = UINavigationController(rootViewController: hotMovie)
        navHot.tabBarItem = UITabBarItem(title: "Phim đang chiếu", image: UIImage(named: "Hot-icon.png"), tag: 2)
        
        let introduceMovie = IntroMovie(nibName:"IntroMovie", bundle:nil)
        let navIntroduce = UINavigationController(rootViewController: introduceMovie)
        navIntroduce.tabBarItem = UITabBarItem(title: "Hướng Dẫn", image: UIImage(named: "about.png"), tag: 3)
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navList, navLocation, navHot, navIntroduce]
        tabBarController.title = "Movie Cinema"
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        let image = UIImage(named: "tabbar")
        UITabBar.appearance().backgroundImage = image
        UITabBar.appearance().selectionIndicatorImage = UIImage(named: "selection-tab")
        return true
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

