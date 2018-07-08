export default `
  type Post {
    # ID of the Post
    id: Int!

    # Title of the Post
    title: String!

    # URL for the GIF of Post
    url: String!

    # Author ID
    authorId: Int!

    # Author of Post
    author: Author

    # Votes
    votes: Int
  }
`;
