//
//  LikeButtonView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/10/26.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var isLiked: Bool

    var body: some View {
    
        Button {
            isLiked.toggle()
        } label: {
            Image(isLiked ? "Like" : "Like_empty")
        }
    }
}
