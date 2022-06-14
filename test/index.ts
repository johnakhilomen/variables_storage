import { expect } from "chai";
import { ethers } from "hardhat";

describe("VariablesStorage/MainStorage", function () {
  let VariablesStorage: any, variablesStorage: any;
  let MainStorage: any, mainStorage: any;

  beforeEach(async () => {
    VariablesStorage = await ethers.getContractFactory("VariablesStorage");
    variablesStorage = await VariablesStorage.deploy();
    await variablesStorage.deployed();

    MainStorage = await ethers.getContractFactory("Main");
    mainStorage = await MainStorage.deploy();
    await mainStorage.deployed();

  });

  it("Should return text once it's changed - VariablesStorage", async function () {
    const setValueTx = await variablesStorage.setVal("A simple value");
    await setValueTx.wait();
    expect(await variablesStorage.getVal()).to.equal("A simple value");
  });

  it("Should return text once it's changed - MainStorage", async function () {
    const setValueTx1 = await mainStorage.setVal("A simple value");
    await setValueTx1.wait();
    expect(await mainStorage.getValue()).to.equal("A simple value");
  });

});
