# Inite INIT and IDEA Tokens

This project built using Hardhat framework. We build contracts from `contracts` folder. To deploy we use this command:

```
BSC_TESTNET_PRIVATE_KEY="HERE_YOUR_KEY" npx hardhat run scripts/deploy.js --network bscTestnet
```

We need to add more networks here like Aurora / Polygon to build there as well. We need to have main / test networks script to deploy contracts there.

## Deploying to Polygon

Not sure why, but using regular script to deploy to Polygon test net / main net doesn't work.
Using this service -> https://remix.ethereum.org/ works fine. There you need to take your INIT / IDEA token solidity code and just deploy using Metamask.
Another reason could be that Hardhat cannot identify that we have underpriced transaction somewhere so this is why I can't deploy to Polygon from this script and changing account may help.