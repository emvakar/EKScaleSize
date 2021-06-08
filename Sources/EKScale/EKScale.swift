//
//  EKScale.swift
//
//  Created by Emil Karimov on 08.06.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import UIKit

protocol EKScalable {

    var scale: Self { get }

}

extension CGFloat: EKScalable {

    var scale: CGFloat {
        let designScreenWidth: CGFloat = 375
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return self * currentScreenWidth / designScreenWidth
    }

    var safeScale: CGFloat {
        let designScreenWidth: CGFloat = 375
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return CGFloat(roundf(Float(Double(self * currentScreenWidth / designScreenWidth))))
    }

    var unscale: CGFloat {
        let designScreenWidth: CGFloat = 375
        let currentScreenWidth = UIScreen.main.bounds.size.width
        return self / currentScreenWidth * designScreenWidth
    }

}

extension Int {

    var scale: CGFloat {
        return CGFloat(self).scale
    }

    var safeScale: CGFloat {
        return CGFloat(self).safeScale
    }

    var unscale: CGFloat {
        return CGFloat(self).unscale
    }

}

extension Double {

    var scale: CGFloat {
        return CGFloat(self).scale
    }

    var safeScale: CGFloat {
        return CGFloat(self).safeScale
    }

    var unscale: CGFloat {
        return CGFloat(self).unscale
    }

}

extension CGPoint: EKScalable {

    var scale: CGPoint {
        return CGPoint(x: x.scale, y: y.scale)
    }

}

extension CGSize: EKScalable {

    var scale: CGSize {
        return CGSize(width: width.scale, height: height.scale)
    }

}

extension CGRect: EKScalable {

    var scale: CGRect {
        return CGRect(origin: origin.scale, size: size.scale)
    }

}

extension UIFont {

    var scale: UIFont {
        return UIFont(name: fontName, size: pointSize.scale) ?? UIFont.systemFont(ofSize: pointSize.scale)
    }

}

extension UIEdgeInsets: EKScalable {

    var scale: UIEdgeInsets {
        return UIEdgeInsets(top: top.scale, left: left.scale, bottom: bottom.scale, right: right.scale)
    }

}

