import Comment from '../../models/Comment';

export default async () => {
  return await Comment.findAll({
    order: [['id', 'ASC']]
  });
};
