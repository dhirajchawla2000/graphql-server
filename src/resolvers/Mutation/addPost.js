import Post from '../../models/Post';

export default async (_, args) => {
  const newPost = await Post.create({
    title: args.title,
    url: args.url,
    authorId: args.authorId
  });

  return newPost;
};
