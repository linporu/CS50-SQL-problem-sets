# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Pros:
- Seperate query flows to 3 servers

Cons:
- If any server breaks, data will be lost
- Need to query all servers to get full data

## Partitioning by Hour

Pros:
- Easy to query when I only need particular time interval data

Cons:
- According to the partition of data, it's almost the same as 1 server
- It's prone to single point failure

## Partitioning by Hash Value

Pros:
- Seperate query flows to 3 servers
- If only a few data needed, we can calculate the hash values and only query corresponding servers

Cons:
- If any server breaks, data will be lost
