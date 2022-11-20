//
//  ViewController.swift
//  WaiterApp
//
//  Created by Alley Pereira on 17/11/22.
//

import UIKit

class WaiterMainViewController: UIViewController {

	// MARK: - Views
	lazy var filterCollectionView: FilterView = FilterView()

	// MARK: - ViewController Cycle

	override func loadView() {
		super.loadView()
		self.view = filterCollectionView
	}
	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = .systemBackground
		self.title = "Pedido"
	}

}
