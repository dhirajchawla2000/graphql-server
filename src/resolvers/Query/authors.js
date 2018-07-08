import Author from '../../models/Author';

export default async () => {
  return await Author.findAll({
    order: [['id', 'ASC']]
  });
};
