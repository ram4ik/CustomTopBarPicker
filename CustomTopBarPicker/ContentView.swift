//
//  ContentView.swift
//  CustomTopBarPicker
//
//  Created by ramil on 16.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab = 0
    
    var body: some View {
        VStack {
            Picker(selection: $currentTab, label: Text("")) {
                Image(systemName: "house.fill").tag(0)
                Image(systemName: "flame.fill").tag(1)
                Image(systemName: "paperplane.fill").tag(2)
                }.pickerStyle(SegmentedPickerStyle()).padding()
            
            Spacer()
            
            if currentTab == 0 {
                page1()
            }
            if currentTab == 1 {
                page2()
            }
            if currentTab == 2 {
                page3()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct page1: View {
    var body: some View {
        Text("Page 1")
    }
}

struct page2: View {
    var body: some View {
        Text("Page 2")
    }
}
struct page3: View {
    var body: some View {
        Text("Page 3")
    }
}
