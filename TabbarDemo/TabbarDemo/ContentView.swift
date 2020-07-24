//
//  ContentView.swift
//  TabbarDemo
//
//  Created by Ashish Prajapati on 19/09/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
//    var body: some View {
//        TabView {
//            NavigationView {
//                VStack {
//                    NavigationLink(destination: Text("Detail")) {
//                        Text("Go to detail")
//                    }
//                }
//            }
//                .tabItem { Text("First") }
//                .tag(0)
//            Text("Second View")
//                .tabItem { Text("Second") }
//                .tag(1)
//        }
//    }
    var locationManager = CLLocationManager()
    @ObservedObject var location: LocationManager = LocationManager()

    private var animationArrow: Animation {
      Animation
        .easeInOut(duration: 0.2)
    }
    
    var body: some View {
        VStack {
          Image("arrow")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300)
            .transformEffect(
              CGAffineTransform(translationX: -150, y: -150)
                .concatenating(CGAffineTransform(rotationAngle: CGFloat(-location.heading.degreesToRadians)))
                .concatenating(CGAffineTransform(translationX: 150, y: 150))
            )
            .animation(animationArrow)

          Text(String(location.heading.degreesToRadians))
            .font(.system(size: 20))
            .fontWeight(.light)
            .padding(.top, 15)

          Text(String(location.coordinates[0]))
            .font(.system(size: 20))
            .fontWeight(.light)
            .padding(.top, 15)

          Text(String(location.coordinates[1]))
            .font(.system(size: 20))
            .fontWeight(.light)
            .padding(.top, 15)
        }
      }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
