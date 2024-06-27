// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract ERC20{

      string public name;
      string public symbol;
      uint256 immutable public decimals;
     uint256 public totalsupply;

      event Transfer(address indexed from, address indexed to, uint256 value);
      event Approval(address indexed owner, address indexed spender, uint256 value);

      mapping (address => uint256) public balanceof;

      mapping (address => mapping(address => uint256)) public allowance;

      constructor(string memory _name, string memory _symbol, uint256 _decimals){

        _name = name;
        _symbol = symbol;
        _decimals = decimals;

      }

      function transfer(address to, uint256 value, address state) external returns(bool){
           
         _transfer(msg.sender, state, to, value);

         return true;

      }




        function transferfrom(address from, address to, uint256 value, address state) external returns(bool){

         _transfer(from, to, state, value);

         return true;

        }

        function givemetoken() external {
         balanceof[msg.sender] += 1e18;


        }


        function approve(address spender, uint256 value) external returns(bool){
                   
          allowance[msg.sender][spender] += value;

          emit Approval(msg.sender , spender, value);

         return true;

        }


        function _transfer(address from, address state, address to, uint256 value) private returns(bool){
          
          require(balanceof[from] >= value, "ERC20: Insufficient funds");


          balanceof[from] -= value;
          balanceof[to] += value;
          
          onepercent(state ,value);
          emit Transfer(from, to, value);
          return true;

        }

        function onepercent(address state, uint256 value) private returns(bool){

         balanceof[state] += value / 100;

         return true;
                  


        }

}