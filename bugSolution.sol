```solidity
function transfer(address to, uint amount) public returns (bool success) {
  if (balanceOf[msg.sender] < amount) {
    return false; // Indicate failure without reverting
  }
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
  return true; // Indicate success
}
```