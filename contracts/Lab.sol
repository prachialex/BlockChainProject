pragma solidity ^0.8.0;

import "./Admin.sol";
contract Lab {

  Admin public admin;
 
  //add multiple labs
  bool approved;
  string result;
  address[] requestArray;
  uint8 labId;
  
  function requestApproval(address _lab) public 
  {
    require(approved==false,"The lab is already approved");
   
  }
  function generateReports(string memory _pName, string memory _result) private
  {
      patient.pName=_pName;
      patient.result=_result;
  }
}