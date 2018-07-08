import Post from '../../models/Post';

export default async () => {
  return await Post.findAll({
    order: [['id', 'ASC']]
  });
};
