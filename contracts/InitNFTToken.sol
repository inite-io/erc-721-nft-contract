// contracts/InitNFTToken.sol
// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import "./tokens/nf-token-metadata.sol";
import "./ownership/ownable.sol";

contract InitNFTToken is
  NFTokenMetadata,
  Ownable
{

  /**
   * @dev Contract constructor. Sets metadata extension `name` and `symbol`.
   */
  constructor()
  {
    nftName = "Inite NFT Token";
    nftSymbol = "INIT";
  }

  /**
   * @dev Mints a new NFT.
   * @param _to The address that will own the minted NFT.
   * @param _tokenId of the NFT to be minted by the msg.sender.
   * @param _uri String representing RFC 3986 URI.
   */
  function mint(
    address _to,
    uint256 _tokenId,
    string calldata _uri
  )
    external
    onlyOwner
  {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }

}