import Post from '../../models/Post';

export default async (author) => {
  return await Post.findAll({
    where: {
      authorId: author.id
    },
    order: [['id', 'ASC']]
  });
};
