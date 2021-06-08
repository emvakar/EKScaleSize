//
//  EKScreenSize.swift
//
//  Created by Emil Karimov on 08.06.2021.
//  Copyright © 2021 Emil Karimov. All rights reserved.
//

import UIKit

enum EKScreenSize {

    static let bounds: CGRect = (UIScreen.main.bounds)
    static let width: CGFloat = (bounds.width)
    static let height: CGFloat = (bounds.height)
    static let maxLength: CGFloat = (max(width, height))
    static let minLength: CGFloat = (min(width, height))

    static let isIpad = (UIDevice.current.userInterfaceIdiom == .pad)
    static let isIphone = (UIDevice.current.userInterfaceIdiom == .phone)
    static let isRetina = (UIScreen.main.scale >= 2.0)
    static let isIphone4 = (isIphone && maxLength < 568.0)
    static let isIphone5 = (isIphone && maxLength == 568.0)
    static let isIphone6 = (isIphone && maxLength == 667.0)
    static let isIphone6Plus = (isIphone && maxLength == 736.0)
    static let isIphoneX = (isIphone && maxLength == 812.0)
    static let isIphoneXMax = (isIphone && maxLength == 896.0)
    static let isIphoneXFamily = (isIphone && maxLength / minLength > 2.0)

    static let topOffset: CGFloat = isIphoneXFamily ? 24.0 : 0.0
    static let bottomOffset: CGFloat = isIphoneXFamily ? 34.0 : 0.0

    static let statusBarSize = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.windowScene?.statusBarManager?.statusBarFrame.size ?? .zero
    static let statusBarHeight = statusBarSize.height

    static let tabBarHeight: CGFloat = 49
    static let customTabBarHeight: CGFloat = 61.scale

}

extension CGRect {

    func bounds() -> CGRect {
        var rect = self
        rect.origin = CGPoint.zero
        return rect
    }

}
