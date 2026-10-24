//
//  InstagramFeedView.swift
//  SOPT39-Seminar
//
//  Created by 김세령 on 10/10/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var posts: [PostModel] = examplePosts

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 19) {
                Image("instagramLogo")

                ForEach($posts) { $post in
                    PostCardView(
                        isLiked: $post.isLiked,
                        profileImage: Image("taco"),
                        userName: post.username,
                        location: post.location,
                        postImage: Image(post.postImageName),
                        likeText: post.likesText,
                        caption: post.caption,
                        timeText: post.timeText
                    )
                }
            }
        }
    }
}

#Preview {
    InstagramFeedView()
}
