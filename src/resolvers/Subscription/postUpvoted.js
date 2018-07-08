import { withFilter } from 'graphql-subscriptions';
import pubsub from '../pubsub';

export default {
  subscribe: withFilter(
    () => pubsub.asyncIterator('postUpvoted'),
    (payload, variables) => true
  )
};
