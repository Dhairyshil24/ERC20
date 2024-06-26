# ERC20
Example ERC20 Smart Contract

Explanation:
State Variables:
name, symbol, decimals: Metadata of the token.
totalSupply: Total supply of the tokens.
balances: Mapping to store the balance of each address.
allowances: Mapping to store the allowances.
Events:
Transfer: Triggered when tokens are transferred.
Approval: Triggered when an allowance is set.
Constructor:
Initializes the total supply and assigns it to the deployer's address.
Functions:
balanceOf: Returns the balance of a given address.
transfer: Transfers tokens to a specified address.
approve: Approves an address to spend a specified amount of tokens on behalf of the caller.
transferFrom: Transfers tokens from one address to another using an allowance mechanism.
allowance: Returns the amount which a spender is still allowed to withdraw from an owner.
increaseAllowance: Increases the allowance granted to a spender.
decreaseAllowance: Decreases the allowance granted to a spender.

