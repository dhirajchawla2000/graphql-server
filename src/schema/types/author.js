export default `
  type Author {
    # ID of the Author
    id: Int!

    # First Name
    firstName: String!

    # Last Name
    lastName: String!

    # List of Posts written by Author
    posts: [Post]
  }
`;
