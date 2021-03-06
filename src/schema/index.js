import { makeExecutableSchema } from 'graphql-tools';
import Query from './operations/Query';
import Mutation from './operations/Mutation';
import Subscription from './operations/Subscription';
import Post from './types/post';
import Author from './types/author';
import Comment from './types/comment';
import resolvers from '../resolvers';

const RootQuery = `
  ${Query}
  ${Mutation}
  ${Subscription}
`;

const schema = makeExecutableSchema({
  typeDefs: [RootQuery, Post, Author, Comment],
  resolvers
});

export default schema;
