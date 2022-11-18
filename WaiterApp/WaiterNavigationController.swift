//
//  WaiterNavigationController.swift
//  WaiterApp
//
//  Created by Alley Pereira on 17/11/22.
//

import UIKit

final class WaiterNavigationController: UINavigationController {

	override func viewDidLoad() {
		super.viewDidLoad()

		self.navigationBar.prefersLargeTitles = true
		customNavigationBarAppearance()
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		updateNavigationBarAppearance()
		self.navigationController?.setNavigationBarHidden(false, animated: true)
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

		customNavigationBarAppearance()
		self.navigationController?.setNavigationBarHidden(true, animated: true)
	}

	private func updateNavigationBarAppearance() {
		self.title = "Teste"
	}

	func customNavigationBarAppearance() {

		let item = UINavigationItem()
		let image = UIImage(named: "boas-vindas")
		let headerImageView = UIImageView(image: image)
		let navigationBar = UINavigationBar()

		headerImageView.contentMode = .scaleAspectFit

		item.titleView = headerImageView

		navigationBar.isTranslucent = false
		navigationBar.barTintColor = UIColor.cyan

		view.addSubview(navigationBar)
		navigationBar.translatesAutoresizingMaskIntoConstraints = false
		navigationBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		navigationBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true

		navigationBar.items = [item]
	}

}


// MARK: - Test Factory
 final class WaiterNavigationControllerFactory {

 	static func make() -> WaiterNavigationController {
 		let navigationController = WaiterNavigationController()
 		let viewController = WaiterMainViewController()
 		navigationController.viewControllers = [viewController]
 		return navigationController
 	}
 }
