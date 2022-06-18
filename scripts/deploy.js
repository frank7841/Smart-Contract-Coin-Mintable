const main = async()=>{
  const frankyCoinFactory = await hre.ethers.getContractFactory('FrankyCoin');

  const frankyCoin = await frankyCoinFactory.deploy();
  await frankyCoin.deployed();

  console.log('Contract Coin deployed on Address', frankyCoin.address);
};

const runMain = async()=>{
  try {
    await main();
    process.exit(0);
    
  } catch (error) {
    console.log(error);
    process.exit(1);
    
  };
};

runMain();