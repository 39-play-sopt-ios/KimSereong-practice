//
//  login.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/3/26.
//

import SwiftUI

struct PracticeView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("moayo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("모아요")
                        .font(.title)
                    Text("잘해보쟈~")
                        .font(.headline)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(.white.opacity(0.75))
        }
    }
}

#Preview {
    PracticeView()
}
