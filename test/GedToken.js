var GedToken = artifacts.require("./GedToken.sol");

contract('GedToken', function(accounts) {
	
	it('sets the total supply upon deployment', function() {
			return GedToken.deployed().then(function(instance) {
				tokenInstance = instance;
				return tokenInstance.totalSupply();
			}).then(function(totalSupply){
				assert.equal(totalSupply.toNumber(), 1000000, 'sets the total sypply to 1 mil');
			});
	});
})
