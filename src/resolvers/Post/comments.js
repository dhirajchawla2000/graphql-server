import Comment from '../../models/Comment';

export default async (post) => {
  return await Comment.findAll({
    where: {
      postId: post.id
    },
    order: [['id', 'ASC']]
  });
};
