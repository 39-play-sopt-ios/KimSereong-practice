//
//  InstagramMainView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/3/26.
//

import SwiftUI

struct InstagramMainView: View {
    @State private var showAccountSwitcher = false

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("instagramLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 175, height: 39)
                .padding(.top, 193)
            
            Image("taco")
                .resizable()
                .scaledToFit()
                .frame(width: 85, height: 85)
                .padding(.top, 65)
            
            Text("moamoa")
                .font(.default)
                .fontWeight(.semibold)
                .padding(.top, 13)
            
            VStack(){
                Button {
                    print("로그인 버튼 클릭")
                } label: {
                    Text("로그인하기")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(.primaryBlue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                .padding(.horizontal, 34)
                .padding(.top, 12)
                
                Button("계정 전환") {
                    showAccountSwitcher = true
                }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.primaryBlue)
                    .padding(.top, 30)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 11) {
                    Text("계정이 없으신가요? ")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.black.opacity(0.4))
                    
                    Text("회원가입하기")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.black)
                }
                .padding(.top, 187)
            }
        }
        .sheet(isPresented: $showAccountSwitcher) {
            VStack() {
                Text("계정 전환")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Text("다른 계정으로 로그인해 보세요.")
                
                Spacer()
                
                Button {
                    print("모달을 닫습니다")
                    showAccountSwitcher = false
                } label: {
                    Text("닫기")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(.primaryBlue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
            }
            .padding()
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    InstagramMainView()
}
