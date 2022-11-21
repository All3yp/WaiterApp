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
		addSubview(emojiFoodlabel)
		addSubview(foodNamelabel)
		self.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([

			circularView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
			circularView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant:15),
			circularView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
			circularView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),

			emojiFoodlabel.centerXAnchor.constraint(equalTo: circularView.centerXAnchor),
			emojiFoodlabel.centerYAnchor.constraint(equalTo: circularView.centerYAnchor),
			emojiFoodlabel.heightAnchor.constraint(equalToConstant: 20),
			emojiFoodlabel.widthAnchor.constraint(equalToConstant: 20),

			foodNamelabel.topAnchor.constraint(equalTo: circularView.bottomAnchor, constant: 5),
			foodNamelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
			foodNamelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
			foodNamelabel.heightAnchor.constraint(equalToConstant: 20)
		])
	}

	func setupAdditionalLayout() {
		circularView.layer.shadowPath = UIBezierPath(
			roundedRect: circularView.bounds,
			cornerRadius: circularView.bounds.width / 2).cgPath
		circularView.layer.shadowOffset = CGSize(width: 0, height: 0)
		circularView.layer.shadowRadius = 5
		circularView.layer.shadowOpacity = 0.5

		foodNamelabel.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
		foodNamelabel.textAlignment = .center
	}
	
}
