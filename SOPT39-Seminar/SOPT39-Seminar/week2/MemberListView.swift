//
//  MemberListView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/10/26.
//

import SwiftUI

struct MemberListView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("주희 상세 보기", value: "주희")
                
                NavigationLink("서영 상세 보기", value: "서영")
            }
            .navigationTitle("파트원")
            .navigationDestination(for: String.self) { name in
                MemberDetailView(name: name)
            }
        }
    }
}

// 상위 화면의 NavigationStack에서 파트원 상세 화면으로 이동해요.
#Preview {
    MemberListView()
}
