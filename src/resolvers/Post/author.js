import Author from '../../models/Author';

export default async (post) => {
  return await Author.findById(post.authorId);
};
