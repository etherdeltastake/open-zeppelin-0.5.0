pragma solidity ^0.5.0

contract EDSCrowdsale is EDSToken, AllowanceCrowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        IERC20 token,
        address tokenWallet  // <- new argument
    )
        AllowanceCrowdsale(tokenWallet)  // <- used here
        Crowdsale(rate, wallet, token)
        public
    {

    }
}
