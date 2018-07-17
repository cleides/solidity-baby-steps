pragma solidity ^0.4.24;

contract BankAccountGeneric
{ 
    string ownerName;
    address ownerAdress;
    string ownerPostalAddress;
    string ownerPostCode;
    
    uint public balance = 1000;                 // savings in wei
    uint public interestRate = 4;            // interest rate in %
    
    constructor(uint startBalance, uint startInterest) // constructor copied values 1000 and 4 after BankAccountGeneric in contract 2 and 3 below
    public
    {
       balance = startBalance;
       interestRate = startInterest;
    }
    
    function applyInterest()
    public
    {
        balance = balance + (balance * interestRate / 100);
    }
}

contract BankCardPin
{
    uint public pinNumber;
}

contract BankAccountSavings is BankAccountGeneric(1000,4), BankCardPin
{
    uint public monthBeforeWithdrawal;   // minimum months before a withdrawal 
}

contract BankAccountCurrent is BankAccountGeneric(1000,4)
{
}
