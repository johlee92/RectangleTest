//
//  ContentView.swift
//  RectangleTest
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader {
            geo in
            
            ScrollView {
                LazyVStack (alignment: .leading) {
                    ForEach(1..<51) {
                        recIndex in
                        
                        let ranWidth = Double.random(in: 0...0.9)
                        let ranHeight = Double.random(in: 0...0.5)
                        
                        Rectangle()
                            .frame(width: geo.size.width*ranWidth, height: geo.size.height*ranHeight, alignment: .center)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
