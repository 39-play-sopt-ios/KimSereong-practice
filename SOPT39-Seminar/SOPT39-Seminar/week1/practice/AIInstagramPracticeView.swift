import SwiftUI

// 파일명과 View 이름은 달라도 됩니다.
// 요청한 #Preview에서 사용할 이름은 AILoginPracticeView입니다.
struct AILoginPracticeView: View {
    // 입력값은 body 밖, View 구조체 안에서 관리합니다.
    @State private var username = ""
    @State private var password = ""

    // 화면에 표시할 View는 body 안에 작성합니다.
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                // 1. 로고
                Image("instagramLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 188, height: 42)
                    .padding(.bottom, 44)

                // 2. 아이디와 비밀번호 입력 영역
                VStack(spacing: 12) {
                    TextField("아이디", text: $username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding(.horizontal, 15)
                        .frame(height: 44)
                        .background(
                            Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255),
                            in: RoundedRectangle(cornerRadius: 5)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(
                                    Color(red: 225 / 255, green: 225 / 255, blue: 225 / 255),
                                    lineWidth: 0.5
                                )
                        )

                    SecureField("비밀번호", text: $password)
                        .padding(.horizontal, 15)
                        .frame(height: 44)
                        .background(
                            Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255),
                            in: RoundedRectangle(cornerRadius: 5)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.black.opacity(0.1), lineWidth: 0.5)
                        )
                }
                .font(.system(size: 14))
                .foregroundStyle(
                    Color(red: 38 / 255, green: 38 / 255, blue: 38 / 255)
                )

                // 3. 로그인 버튼: 입력값을 출력하지 않고 메시지만 출력합니다.
                Button {
                    print("로그인 버튼을 눌렀습니다")
                } label: {
                    Text("로그인하기")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(
                            Color("primary_blue"),
                            in: RoundedRectangle(cornerRadius: 5)
                        )
                }
                .buttonStyle(.plain)
                .padding(.top, 63)
            }
            .padding(.horizontal, 16)
            // 원본: 로고 y = 170, 상단 안전 영역 = 44 → 여백 126.
            // iPhone 18 Pro에서는 실제 Preview를 보며 이 값을 조정합니다.
            .padding(.top, 126)

            // 콘텐츠 아래의 남는 공간을 차지합니다.
            Spacer(minLength: 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
        // 참고 화면의 밝은 배경과 글자 색을 유지합니다.
        .preferredColorScheme(.light)
    }
}

// Preview는 View 구조체의 닫는 중괄호 다음에 작성합니다.
#Preview { AILoginPracticeView() }
