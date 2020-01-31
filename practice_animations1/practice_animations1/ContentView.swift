//
//  ContentView.swift
//  practice_animations1
//
//  Created by ShiroIbi on 2020/01/30.
//  Copyright © 2020 sunyou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingRed:Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation{
                    self.isShowingRed.toggle()
                }
            }){
                Text("tap me")
            }
            
            if isShowingRed{
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 200, height: 200, alignment: .center)
                    .transition(.scale)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
