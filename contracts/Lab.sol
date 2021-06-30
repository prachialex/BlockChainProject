pragma solidity ^0.8.0;

contract Lab{
      
    struct Labs{
      uint256 labId;
      bool approved;
    }
    string result;
    mapping (address=>Labs) public labs;

    function requestApproval(address _lab) private view
    {
      require(labs[_lab].approved==false,"The lab is already approved");


    }

    function generateReports(string memory _pName, uint256 _uId, string memory _result) private
    {


    }


}