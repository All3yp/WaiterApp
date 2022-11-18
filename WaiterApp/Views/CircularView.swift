//
//  CircularView.swift
//  WaiterApp
//
//  Created by Alley Pereira on 18/11/22.
//

import UIKit

final class CircularView: UIView {

	let circleLayer: CAShapeLayer = {
		let layer = CAShapeLayer()
		layer.fillColor = UIColor.clear.cgColor
		layer.strokeColor = UIColor.purple.cgColor
		layer.fillColor = UIColor.orange.cgColor
		layer.lineWidth = 2
		return layer
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		layer.addSublayer(circleLayer)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		configurateLayer()
	}

	private func configurateLayer() {
		let center = CGPoint(x: bounds.midX, y: bounds.midY)
		let radius = min(bounds.width, bounds.height) / 2
		let startAngle = CGFloat(-Double.pi / 2)
		let endAngle = startAngle + CGFloat(Double.pi * 2)
		let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
		circleLayer.path = path.cgPath
	}
}
