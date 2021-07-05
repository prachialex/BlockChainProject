pragma solidity ^0.8.0;

import "./IStorage.sol";
import "./Lab.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Admin is Ownable {
    
    IStorage public store;
    Lab public labInst;

    modifier initialized () {
        require( store != IStorage(address(0)), "admin: storage not initialized" );
        _;
    }
    
    function setStorage(IStorage _storage) onlyOwner external {
        require(_storage != IStorage(address(0)), "admin: storage cannot be zero");
        store = _storage;
    }
    
    function setNewAdmin(address _newadmin) onlyOwner public {
        store.setAdmin(_newadmin);
	}	
    
    function registerPatient(string memory _name, uint8 _age) initialized public {
        store.registerPatient(_name, _age, msg.sender);
    }

	function approveLabs(address _lab) onlyOwner external{
		labInst.requestArray[_lab].approved=true;							// needs to be done for multiple labs
	}
}