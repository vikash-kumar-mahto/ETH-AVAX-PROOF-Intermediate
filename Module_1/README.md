# RentalSystem
The `RentalSystem` is a smart contract written in Solidity for managing rental rates for bikes and cars. It allows the contract owner to set and get rental rates for different vehicles, ensuring that rental amounts are within specified ranges. The contract includes robust error handling using `require`, `assert`, and `revert` statements.

## Description
The `RentalSystem` smart contract is designed to manage rental rates for bikes and cars. This contract allows only the owner to set rental rates for different vehicles, ensuring that the rental amounts fall within specified ranges for each vehicle type. This is particularly useful for rental businesses or platforms that need to enforce specific pricing rules and maintain a record of rental transactions in a decentralized and tamper-proof manner.

## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

![image](https://github.com/vikash-kumar-mahto/ETH-AVAX-PROOF-Intermediate/assets/93486699/020bc071-e003-4694-a527-72849f22bc6c)


To compile the code,click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to 0.8.17 (or another compatible version), and then click on the "Compile RentalSystem.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "RentalSystem" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the functions provided. For example, you can set rantal rate , and check whether the given price is for car or bike.

## Authors
Vikash Mahto
[@Vikash](https://www.linkedin.com/in/vikash-kumar1212/)


## License
This project is licensed under the MIT License - see the LICENSE.md file for details
