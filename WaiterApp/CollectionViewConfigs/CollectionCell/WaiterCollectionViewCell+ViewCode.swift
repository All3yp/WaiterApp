//
//  WaiterCollectionViewCell+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

extension FoodCircleCollectionViewCell: ViewCode {

	func addSubviews() {
		addSubview(circularView)
		addSubview(label)
		self.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			circularView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			circularView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			circularView.widthAnchor.constraint(equalToConstant: 100),
			circularView.heightAnchor.constraint(equalToConstant: 100),

			label.topAnchor.constraint(equalTo: circularView.bottomAnchor, constant: 10),
			label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			label.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			label.heightAnchor.constraint(equalToConstant: 20)
		])
	}

	func setupAdditionalLayout() {
		circularView.layer.shadowColor = UIColor.cyan.cgColor
		circularView.layer.shadowOffset = CGSize(width: 0, height: 0)
		circularView.layer.shadowRadius = 5
		circularView.layer.shadowOpacity = 0.5

		label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
		label.textAlignment = .center
		label.text = "Valor inicial"
	}
	
}
