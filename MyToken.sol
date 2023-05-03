/*
BOI DOG wants to be the most helpful dog of the web.
The meme coin relates to the borzoi meme trend "let me do it for you".
*/
// programming done with tutorial by https://youtu.be/ZLFiGHIxS1c
// define solidity version
pragma solidity ^0.8.19;

// define smart contract
// we use the open-zeppelin library from github
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
// with the "is" keyword all the definitions of zeppelin library ERC 20 (ethereum standard) are available in MyToken
contract MyToken is ERC20 {
    //the constructor will be only deployed once when we deploy our token
    // Also call the constructor of zepplelin ERC20 and define its name and symbol
    constructor() ERC20('Borzoi the helpful dog', 'BOIDOG'){
        // send all tokens to the creator
        // for the account we use the address, that has deployed the contract
        //_mint(address account, uint256 amount);
        _mint(msg.sender, 100000000 * 10 ** 18);
    }

}

/*
ToDo 
- Deployment on Main Net (add metamask, ... see last minuits of tutorial https://youtu.be/ZLFiGHIxS1c)
- Same project on truffle (Binanace and Ethereum)
*/