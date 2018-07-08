export default `
  type Mutation {
    addAuthor (
      firstName: String!
      lastName: String!
    ): Author

    addPost (
      authorId: Int!
      title: String!
      url: String!
    ): Post

    upVote (id: Int!): Post
  }
`;
