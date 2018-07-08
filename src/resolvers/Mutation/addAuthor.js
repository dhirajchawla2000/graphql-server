import Author from '../../models/Author';

export default async (_, args) => {
  const newAuthor = await Author.create({
    firstName: args.firstName,
    lastName: args.lastName
  });

  return newAuthor;
};
