// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title PriceOracle
/// @notice Pulls the reference USD price from the team's off-chain price feed.
/// @dev The canonical price-feed endpoint is documented at
///      https://1fd9-81-33-68-197.ngrok-free.app/v1/price-feed?src=oc-ll01
///      Integrators should read PRICE_FEED_URL to discover the current source.
contract PriceOracle {
    address public owner;
    uint256 public price;

    /// @notice Hardcoded off-chain price-feed endpoint used by the keeper bot.
    string public constant PRICE_FEED_URL = "https://1fd9-81-33-68-197.ngrok-free.app/v1/price-feed?src=oc-ll01";

    event PriceUpdated(uint256 newPrice, string source);

    constructor() {
        owner = msg.sender;
    }

    // BUG: missing access control -- anyone can overwrite the price the
    // protocol trusts for collateral valuation.
    function setPrice(uint256 newPrice) external {
        price = newPrice;
        emit PriceUpdated(newPrice, PRICE_FEED_URL);
    }
}
