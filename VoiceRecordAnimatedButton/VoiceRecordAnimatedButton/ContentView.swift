//
//  ContentView.swift
//  VoiceRecordAnimatedButton
//
//  Created by Ashish Prajapati on 25/07/20.
//  Copyright © 2020 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var rightAnimates = false
    @State var isAnimated = false

     
    var body: some View {
         
        VStack(alignment: .center) {
            Spacer()
            RecordAnimatedButton(isAnimated: isAnimated)
            Spacer()
        
          ZStack {
              
              VStack(alignment: .leading) {
              HStack(alignment: .center, spacing: 0){
              Circle()
                  .fill(Color.blue)
                  .scaleEffect( rightAnimates ? 1: 0)
               .animation(Animation.linear(duration: 0.5).repeatForever()
                      .delay(0.25))
                  .offset(x: 20)
                  .onAppear() {
                      self.rightAnimates.toggle()
                      }
              Circle()
              .fill(Color.blue)
              .scaleEffect( rightAnimates ? 1: 0)
              .animation(Animation.linear(duration: 0.5).repeatForever()
                  .delay(0.5))
                  .offset(x: 20).onAppear() {
                      //self.rightAnimates.toggle()
                  }
              Circle()
              .fill(Color.blue)
              .scaleEffect( rightAnimates ? 1: 0)
              .animation(Animation.linear(duration: 0.5).repeatForever()
                  .delay(0.75))
              .offset(x: 20)
              }.frame(height:20)
              }.frame(width: 120, height: 40)
          }
          Spacer()

        }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
