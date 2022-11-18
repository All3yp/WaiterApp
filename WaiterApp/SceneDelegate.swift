//
//  SceneDelegate.swift
//  WaiterApp
//
//  Created by Alley Pereira on 17/11/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

		var window: UIWindow?
	let rootViewController = WaiterNavigationControllerFactory.make()

		func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
							 options connectionOptions: UIScene.ConnectionOptions) {

				guard let windowScene = (scene as? UIWindowScene) else { return }

				let window = UIWindow(windowScene: windowScene)
				window.rootViewController = rootViewController
				window.makeKeyAndVisible()
				self.window = window
		}

		func sceneDidDisconnect(_ scene: UIScene) { }

		func sceneDidBecomeActive(_ scene: UIScene) { }

		func sceneWillResignActive(_ scene: UIScene) { }

		func sceneWillEnterForeground(_ scene: UIScene) { }

		func sceneDidEnterBackground(_ scene: UIScene) { }

}
