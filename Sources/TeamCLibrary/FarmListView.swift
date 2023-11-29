//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import SwiftUI
import EasyUtilities
import MapKit

public struct FarmListView<FarmDetailViewContent: View>: View {
    
    @State var date = Date()
    
    let farms: [FarmData]
    
    @ViewBuilder let farmDetailView: (FarmData) -> FarmDetailViewContent
    
    public init(
        farms: [FarmData],
        @ViewBuilder farmDetailView: @escaping (FarmData) -> FarmDetailViewContent
    ) {
        self.farms = farms
        self.farmDetailView = farmDetailView
    }
    
    var filteredFarms: [FarmData] {
        self.farms.compactMap {
            if $0.date.formatted(.dateTime.year().month().day()) == self.date.formatted(.dateTime.year().month().day()) {
                return $0
            } else {
                return nil
            }
        }
    }
    
    public var body: some View {
        NavigationStack {
            List {
                DatePicker("日付", selection: $date, displayedComponents: .date)
                ForEach(filteredFarms) { farm in
                    NavigationLink {
                        farmDetailView(farm)
                            .navigationTitle(farm.name)
                    } label: {
                        Image(systemSymbol: .tree)
                        Text(farm.name)
                    }
                    .frame(height: 40)
                }
            }
            .listStyle(.plain)
            .navigationTitle("農園一覧")
        }
    }
}
