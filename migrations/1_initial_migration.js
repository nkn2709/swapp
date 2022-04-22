const Token1 = artifacts.require("Token1");
const Token2 = artifacts.require("Token2");

module.exports = function (deployer) {
  let wallet1 = '0x0e820b60b4e9Cc7E0936B1eB83e5e331DF970290'
  let wallet2 = '0x596Ecf657794E7a327345D885300476cF79Af04a'
  let  symbol1 = "TKen1";
  let  symbol2 = "TKen2";
  let  name1 = "Token 1";
  let  name2 = "Token 2";
  let totalSup = 1000000;
  let  decimals = 1;
  deployer.deploy(Token1, name1, symbol1, totalSup, wallet1);
  deployer.deploy(Token2, name2, symbol1, totalSup, wallet2);
};
