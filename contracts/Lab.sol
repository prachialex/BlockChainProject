pragma solidity ^0.8.0;

import "./Admin.sol";
contract Lab {
  
  uint256 labId;
  bool approved;
  string result;
  address requestArray;
  
  function requestApproval(address _lab) public 
  {
    require(approved==false,"The lab is already approved");
    requestArray.push(_lab);
  }
  function generateReports(string memory _pName, uint256 _uId, string memory _result) private
  {
  }
  function sendReports(bytes _ipfsHash) public returns (bytes32) {
     
  }
}