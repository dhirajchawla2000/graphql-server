import Post from '../../models/Post';

export default async (_, { id }) => {
  return await Post.findById(id);
};
