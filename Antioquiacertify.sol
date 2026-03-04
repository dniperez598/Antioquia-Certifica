// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AntioquiaCertify {
    struct Lote {
        uint256 id;
        string producto; 
        string productor;
        uint256 fecha;
        bool certificado;
    }

    mapping(uint256 => Lote) public lotes;
    uint256 public contador;

    function certificar(string memory _prod, string memory _owner) public {
        contador++;
        lotes[contador] = Lote(contador, _prod, _owner, block.timestamp, true);
    }
}
