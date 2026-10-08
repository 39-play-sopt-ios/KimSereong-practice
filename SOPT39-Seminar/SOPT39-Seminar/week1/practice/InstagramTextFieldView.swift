//
//  InstagramTextField.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/3/26.
//

import SwiftUI

struct InstagramTextFieldView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    private var isLoginEnabled: Bool {
        !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        && !password.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(.instagramLogo)
                .padding(.top, 126)
            
            TextField(
                "이메일",
                text: $email,
                prompt: Text("이메일을 입력하세요")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.black.opacity(0.2))
            )
            .textContentType(.emailAddress)
            .keyboardType(.emailAddress)
            .modifier(InstagramTextFieldStyle())
            .padding(.top, 44)
            
            SecureField(
                "비밀번호",
                text: $password,
                prompt: Text("비밀번호를 입력하세요")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.black.opacity(0.2))
            )
            .textContentType(.password)
            .modifier(InstagramTextFieldStyle())
            .padding(.top, 12)
            
            Button {
                // login
            } label: {
                Text("로그인하기")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(height: 44)
                    .frame(maxWidth: .infinity)
                    .background(.primaryBlue)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5)
                    )
            }
            .disabled(!isLoginEnabled)
            .opacity(isLoginEnabled ? 1 : 0.4)
            .padding(.horizontal, 16)
            .padding(.top, 63)
            
            Spacer()
        }
    }
}

private struct InstagramTextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14, weight: .regular))
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .padding(.horizontal, 15)
            .frame(height: 44)
            .background(.gray100)
            .clipShape(
                RoundedRectangle(cornerRadius: 5)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray.opacity(0.1), lineWidth: 0.5)
            }
            .padding(.horizontal, 16)
        
    }
}

#Preview {
    InstagramTextFieldView()
}
