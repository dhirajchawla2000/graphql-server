import Sequelize from 'sequelize';
import Post from '../../models/Post';
import pubsub from '../pubsub';

export default async (_, { id }) => {
  const updatedPost = await Post.update(
    {
      votes: Sequelize.literal('votes + 1')
    },
    {
      where: { id }
    }
  );

  if (updatedPost[0] === 1) {
    const post = await Post.findById(id);
    pubsub.publish('postUpvoted', { postUpvoted: post });
    return post;
  }

  return null;
};
