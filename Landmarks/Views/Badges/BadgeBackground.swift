//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by 中山慶祐 on 2021/07/13.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader{ geometory in
            Path { path in
                var width: CGFloat = min(geometory.size.width, geometory.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = ( width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(to: CGPoint(
                    x: width * 0.95 + xOffset,
                    y: height * (0.20 + HexagonParameters.adjustment)
                )
                )
                
                HexagonParameters.segments.forEach{ segment in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ), control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(LinearGradient(
                    gradient: Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
    }
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 172, green: 120.0 / 255, blue: 120 / 255)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
