//
//  CubicTimingParametersCreator.swift
//  HJMaison
//  
//  Created by maeda.tasuku on 2019/06/08
//  Copyright © 2019 Classmethod. All rights reserved.
//

import UIKit

/// ベジェタイミングタイプ
///
/// オリジナルパラメータ
/// https://github.com/zz85/cubic-bezier-approximations
enum CubicTimingParametersType {
    case quadIn
    case quadOut
    case quadInOut
    case cubicIn
    case cubicOut
    case cubicInOut
    case quartIn
    case quartOut
    case quartInOut
    case quintIn
    case quintOut
    case quintInOut
    case sineIn
    case sineOut
    case sineInOut
    case expoIn
    case expoOut
    case expoInOut
    case circIn
    case circOut
    case circInOut
    
    var controlPointData: [CGFloat] {
        switch self {
        case .quadIn: return [ 0.26, 0, 0.6, 0.2 ]
        case .quadOut: return [ 0.4, 0.8, 0.74, 1 ]
        case .quadInOut: return [ 0.48, 0.04, 0.52, 0.96 ]
        case .cubicIn: return [ 0.4, 0, 0.68, 0.06 ]
        case .cubicOut: return [ 0.32, 0.94, 0.6, 1 ]
        case .cubicInOut: return [ 0.66, 0, 0.34, 1 ]
        case .quartIn: return [ 0.52, 0, 0.74, 0 ]
        case .quartOut: return [ 0.26, 1, 0.48, 1 ]
        case .quartInOut: return [ 0.76, 0, 0.24, 1 ]
        case .quintIn: return [ 0.64, 0, 0.78, 0 ]
        case .quintOut: return [ 0.22, 1, 0.36, 1 ]
        case .quintInOut: return [ 0.84, 0, 0.16, 1 ]
        case .sineIn: return [ 0.32, 0, 0.6, 0.36 ]
        case .sineOut: return [ 0.4, 0.64, 0.68, 1 ]
        case .sineInOut: return [ 0.36, 0, 0.64, 1 ]
        case .expoIn: return [ 0.66, 0, 0.86, 0 ]
        case .expoOut: return [ 0.14, 1, 0.34, 1 ]
        case .expoInOut: return [ 0.9, 0, 0.1, 1 ]
        case .circIn: return [ 0.54, 0, 1, 0.44 ]
        case .circOut: return [ 0, 0.56, 0.46, 1 ]
        case .circInOut: return [ 0.88, 0.14, 0.12, 0.86 ]
        }
    }
}

/// UICubicTimingParametersを作成する
class CubicTimingParametersCreator {
    
    static func createParameters(timingType: CubicTimingParametersType) -> UICubicTimingParameters {
        
        let pointData = timingType.controlPointData
        if pointData.count != 4 {
            fatalError("the count of pointData must be 4")
        }
        let pt1 = CGPoint(x: pointData[0], y: pointData[1])
        let pt2 = CGPoint(x: pointData[2], y: pointData[3])
        return UICubicTimingParameters(controlPoint1: pt1, controlPoint2: pt2)
    }
}
