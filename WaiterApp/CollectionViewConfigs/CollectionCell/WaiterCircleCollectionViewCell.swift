//
//  WaiterCircleCollectionViewCell.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class WaiterCircleCollectionViewCell: UICollectionViewCell {

	static let identifier = String(describing: WaiterCircleCollectionViewCell.self)

	let circularView = CircularView()
	let label = UILabel()

	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

}
