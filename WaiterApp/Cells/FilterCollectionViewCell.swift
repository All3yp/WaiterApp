//
//  FilterCollectionViewCell.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {

	static let identifier = String(describing: FilterCollectionViewCell.self)

	let circularView = CircularView()
	let emojiFoodlabel = UILabel()
	let foodNamelabel = UILabel()

	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.setupViewCode()
	}

}
