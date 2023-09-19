//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is  ERC721URIStorage, Ownable{
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("MyToken", "MTK") {}

    function safemint(address _recipient, string memory tokenURI) public onlyOwner()returns (uint256){
        _tokenIdCounter.increment();
        uint256 tokenID = _tokenIdCounter.current();
        safemint(_recipient ,tokenID);
        _setTokenURI(tokenID, tokenURI);
        return tokenID;
    }
}


    
//Undeclared identifier. Did you mean "tokenID"?
