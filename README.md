NFTs and Minting Process (javacript)
This code defines functions for creating and managing Non-Fungible Tokens (NFTs) and includes some example usage at the end. Here's a breakdown of what each part of the code does:

Variable Initialization:
numberOfNFTs: Initialized to 0, this variable keeps track of the total number of NFTs minted.

mintNFT Function:
Parameters: name, description, image.
Creates a new NFT object with properties name, description, and image.
Increments numberOfNFTs by 1.
Returns the newly created NFT object.

listNFTs Function:
Parameter: nfts (array of NFT objects).
Iterates over each NFT object in the provided array and logs its details (name, description, image) to the console.

getTotalSupply Function:
Logs the total number of NFTs minted (numberOfNFTs) to the console.

Example Usage:
Two NFTs (nft1 and nft2) are minted using the mintNFT function.
These minted NFTs are stored in an array mintedNFTs.
The listNFTs function is called with mintedNFTs array to display details of all minted NFTs.
Finally, getTotalSupply is called to display the total number of minted NFTs.
