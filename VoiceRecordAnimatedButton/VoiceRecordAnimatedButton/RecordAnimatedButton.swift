//
//  RecordAnimatedButton.swift
//  VoiceRecordAnimatedButton
//
//  Created by Ashish Prajapati on 25/07/20.
//  Copyright © 2020 Ashish Prajapati. All rights reserved.
//

import SwiftUI


extension Animation {
    func `repeat`(while expression: Bool, autoreverses: Bool = false) -> Animation {
        if expression {
            return self.repeatForever(autoreverses: autoreverses)
        } else {
            return self
        }
    }
}


struct RecordAnimatedButton: View {
    @State var isAnimated: Bool
    @State private var animationAmount: CGFloat = 0
    
    var body: some View {
        
        Button(action: {
            self.isAnimated.toggle()
            self.animationAmount = 1
        }, label: {
            
        VStack {
            ZStack {
                Circle()
                .stroke()
                .frame(width: 120, height: 120)
                .foregroundColor(ColorPalette.primaryColor)
                .scaleEffect(isAnimated ? 1 : 0.3)
                .opacity(isAnimated ? 0: 1)
                    .animation(isAnimated ? Animation.linear(duration: 1).repeat(while: isAnimated) : .default)
                Circle()
                .stroke(ColorPalette.medium)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(isAnimated ? Animation.easeOut(duration: 1).repeatForever(autoreverses: false) : .default)
                
                Circle()
                    .foregroundColor(ColorPalette.secondaryColor)
                    .frame(width: 110, height: 110)
                    .scaleEffect(isAnimated ? 0.9 : 1.1)
                    .opacity(isAnimated ? 1 : 0)
                    .animation(isAnimated ? Animation.easeOut(duration: 0.7).repeat(while: isAnimated) : .default)
                
                Circle()
                      .foregroundColor(Color(white: 0.9))
                      .frame(width: 72, height: 72)
                Circle()
                    .frame(width: 64, height: 64)
                    .foregroundColor(ColorPalette.primaryColor)
                    .background(LinearGradient(gradient: Gradient(colors: ColorPalette.colors), startPoint: .leading, endPoint: .trailing).cornerRadius(.infinity))
                Capsule()
                    .frame(width: 12, height: 24)
                    .foregroundColor(.white)
                    .offset(y: -5)
                Capsule()
                    .trim(from: 1/2, to: 1)
                    .stroke(lineWidth: 3)
                    .frame(width: 22, height: 24)
                    .rotationEffect(.degrees(180))
                    .foregroundColor(.white)
                    .offset(y: -2)
                Rectangle()
                    .frame(width: 4, height: 6)
                    .foregroundColor(.white)
                    .offset(y: 14)
                Rectangle()
                   .frame(width: 14, height: 2)
                   .foregroundColor(.white)
                   .offset(y: 18)
            }
        }.frame(height: 64)
    })
            
    }
}

struct RecordAnimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        RecordAnimatedButton(isAnimated: true)
    }
}

