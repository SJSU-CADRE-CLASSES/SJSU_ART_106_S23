# BVH data to NAC

To send BVH data to NAC and to better structure the data sending of the project, we follow a format as defined below:

Max represents an individual user (sendout.maxpat) > handler.js that receives a user's game state > receiver.js that calculates the current game state from all users > NAC to render the game state

We used to receive BVH data in Max, which creates a dictionary (which can also be created with odot). However this was cumbersome due to Max's automatic conversion of a bitstring into some characters that we weren't sure how to decode. They may be ASCII-integers.

## Compression, Space Saving
There is a relatively high probability that the server (receiver.js) will be overloaded with too many BVH connections. Thus, here are some options for efficiency:
- handler.js only reports deltas in user game state
- Utilize compressed packets at each part of the chain
- Reduce sampling rate for all connected BVH clients

## BVH source
[See here](https://github.com/CreativeInquiry/BVH-Examples/blob/master/data/A_test.bvh)