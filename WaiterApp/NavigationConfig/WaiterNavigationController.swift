//
//  WaiterNavigationController.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

final class WaiterNavigationController: UINavigationController {

	override func viewDidLoad() {
		super.viewDidLoad()

		self.navigationBar.tintColor = .label
		self.navigationBar.prefersLargeTitles = true

		setupNavigationAppearance()
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		setRightBarButtonAppearance()
	}

	private func setupNavigationAppearance() {
		self.navigationBar.prefersLargeTitles = true
	}

	private func setRightBarButtonAppearance() {
		let button = UIBarButtonItem(title: "cancelar pedido", style: .plain, target: self, action: #selector(closeButtonTapped))
		button.tintColor = UIColor.CustomColor.red
		self.navigationItem.rightBarButtonItem = button
	}

	@objc func closeButtonTapped() {
		self.dismiss(animated: true, completion: nil)
		print("close button tapped")

	}

}
