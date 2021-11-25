// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {

    // keccak256(key . slot)
    mapping(uint => uint) public aa; //slot 0
    mapping(address => uint) public bb; //slot 1

    // keccak256(slot) + index of the item
    uint[] public cc; //slot 2
   
    uint8 public a = 7;  // 1 byte
    uint16 public b = 10;  // 2 bytes
    address public c = 0xD39f21aA3C0F6A050885E0B59E144F246B68294a;  //20 bytes
    bool d = true;  // 1 byte
    uint64 public e = 15;  //8 bytes
    // 32 bytes, all values will be stored in slot 3

    // TEST - web3.eth.getStorageAt("0x0EFf4899A155d8E087eFB1bF8F6B37391AdB726B", 0) results in: 
    // 0x 0f 01 d39f21aa3c0f6a050885e0b59e144f246b68294a 000a 07


    uint256 public f = 200;  //32 bytes  ->  slot 4


    uint8 public g = 40;  // 1 byte  -> slot 5

    uint56 public h = 789; //32 bytes  -> slot 6

    constructor() {
        cc.push(1);
        cc.push(10);
        cc.push(100);

        aa[2] = 4;
        aa[3] = 10;
        bb[0xD39f21aA3C0F6A050885E0B59E144F246B68294a] = 100;
    }
}

