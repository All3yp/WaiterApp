//
//  WaiterTableViewCell+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 21/11/22.
//

import UIKit

extension WaiterTableViewCell: ViewCode {
	func addSubviews() {
		addSubview(foodImageView)
		addSubview(foodNameLabel)
		addSubview(foodDescriptionLabel)
		addSubview(foodPriceLabel)
		addSubview(foodAddCartButton)
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([

			foodImageView.widthAnchor.constraint(lessThanOrEqualToConstant: 120),
			foodImageView.heightAnchor.constraint(lessThanOrEqualToConstant: 94),
			foodImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
			foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
			foodImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),

			foodNameLabel.topAnchor.constraint(equalTo: foodImageView.topAnchor),
			foodNameLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 10),

			foodDescriptionLabel.topAnchor.constraint(equalTo: foodNameLabel.bottomAnchor, constant: 5),
			foodDescriptionLabel.leadingAnchor.constraint(equalTo: foodNameLabel.leadingAnchor),
			foodDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

			foodPriceLabel.leadingAnchor.constraint(equalTo: foodNameLabel.leadingAnchor),
			foodPriceLabel.topAnchor.constraint(equalTo: foodDescriptionLabel.bottomAnchor, constant: 10),

			foodAddCartButton.trailingAnchor.constraint(equalTo: foodDescriptionLabel.trailingAnchor),
			foodAddCartButton.bottomAnchor.constraint(equalTo: foodPriceLabel.bottomAnchor),
			foodAddCartButton.leadingAnchor.constraint(equalTo: foodPriceLabel.trailingAnchor),


		])
	}

	func setupAdditionalLayout() {
		self.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
	}


}
