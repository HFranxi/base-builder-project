import { ethers } from "ethers"

async function connectWallet(){

const provider = new ethers.BrowserProvider(window.ethereum)

await provider.send("eth_requestAccounts", [])

}

export default connectWallet
