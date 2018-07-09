export default `
  type Query {
    posts: [Post]

    authors: [Author]

    post(id: Int!): Post

    comments: [Comment]
  }
`;
