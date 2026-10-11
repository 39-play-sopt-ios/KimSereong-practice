//
//  DetailView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/10/26.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("상세 화면")
                .font(.title)

            NavigationLink {
                ProfileView()
            } label: {
                Text("프로필 화면으로 이동")
            }
        }
        .navigationTitle("상세")
    }
}
