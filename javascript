let numberOfNFTs = 0;


function mintNFT(name, description, image) {
    
    let newNFT = {
        name: name,
        description: description,
        image: image
    };

   
    numberOfNFTs++;

 
    return newNFT;
}


function listNFTs(nfts) {
    nfts.forEach(function(nft, index) {
        console.log("NFT " + (index + 1) + ":");
        console.log("Name: " + nft.name);
        console.log("Description: " + nft.description);
        console.log("Image: " + nft.image);
    });
}


function getTotalSupply() {
    console.log("Total number of NFTs minted: " + numberOfNFTs);
}




let nft1 = mintNFT("NFT 1", "Description of NFT 1", "image1.jpg");
let nft2 = mintNFT("NFT 2", "Description of NFT 2", "image2.jpg");

let mintedNFTs = [nft1, nft2];


listNFTs(mintedNFTs);


getTotalSupply();
