//
//  HomeView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/10/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                DetailView()
            } label: {
                Text("상세 화면으로 이동")
            }
            .navigationTitle("홈")
        }
    }
}

// 상위 화면에서 시작하면 상세 → 프로필 이동까지 확인할 수 있어요.
#Preview {
    HomeView()
}
