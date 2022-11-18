//
//  WaiterNavigationControllerFactory.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

final class WaiterNavigationControllerFactory {

	static func make() -> WaiterNavigationController {
		let navigationController = WaiterNavigationController()
		let viewController = WaiterMainViewController()
		navigationController.viewControllers = [viewController]
		return navigationController
	}
}
