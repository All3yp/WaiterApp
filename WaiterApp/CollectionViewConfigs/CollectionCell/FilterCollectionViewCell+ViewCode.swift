//
//  FilterCollectionViewCell+ViewCode.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

extension FilterCollectionViewCell: ViewCode {

	func addSubviews() {
		addSubview(circularView)
		circularView.addSubview(emojiFoodlabel)
		addSubview(foodNamelabel)
		self.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			circularView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			circularView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			circularView.widthAnchor.constraint(equalToConstant: 100),
			circularView.heightAnchor.constraint(equalToConstant: 100),

			emojiFoodlabel.centerXAnchor.constraint(equalTo: circularView.centerXAnchor),
			emojiFoodlabel.centerYAnchor.constraint(equalTo: circularView.centerYAnchor),
			emojiFoodlabel.heightAnchor.constraint(equalToConstant: 20),

			foodNamelabel.topAnchor.constraint(equalTo: circularView.bottomAnchor, constant: 10),
			foodNamelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			foodNamelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			foodNamelabel.heightAnchor.constraint(equalToConstant: 20)
		])
	}

	func setupAdditionalLayout() {
		circularView.layer.shadowColor = UIColor.cyan.cgColor
		circularView.layer.shadowOffset = CGSize(width: 0, height: 0)
		circularView.layer.shadowRadius = 5
		circularView.layer.shadowOpacity = 0.5

		foodNamelabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
		foodNamelabel.textAlignment = .center
	}
	
}
