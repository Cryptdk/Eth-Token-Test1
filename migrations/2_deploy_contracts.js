const GedToken = artifacts.require("GedToken");

module.exports = function(deployer) {
  deployer.deploy(GedToken);
};