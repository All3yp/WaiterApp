//
//  WaiterTableViewCell.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class WaiterTableViewCell: UITableViewCell {

	static let identifier = String(describing: WaiterTableViewCell.self)

	let foodImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.layer.cornerRadius = 15
		imageView.layer.masksToBounds = true
		imageView.contentMode = .scaleAspectFill
		return imageView
	}()

	let foodNameLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.font = UIFont.boldSystemFont(ofSize: 17)
		return label
	}()

	let foodDescriptionLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.font = UIFont.italicSystemFont(ofSize: 15)
		return label
	}()

	let foodPriceLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.boldSystemFont(ofSize: 16)
		return label
	}()

	lazy var foodAddCartButton: UIButton = {
		let button = UIButton(type: .system)
		let configBnt: UIImage = UIImage(
			systemName: "plus.circle",
			withConfiguration: UIImage.SymbolConfiguration(
				pointSize: 18, weight: .regular
			)
		)!
		button.setImage(configBnt, for: .normal)
		button.addTarget(self, action: #selector(addToCartAction), for: .touchUpInside)
		return button
	}()

	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

	@objc func addToCartAction(_sender: UIButton) {
		print("Touch")
	}

}
