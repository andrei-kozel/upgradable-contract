# Smart Contract Upgradeability Example

We want to update the functionality but with the storage remaining. It's important to separate functionality from storage. 

#### General structure:
* Storage Contract
  * User data
* Functional Contarct
  * Logic
  * All functionallity goes in this contract
* Proxy Contract
  * Address pointer to the functional contract
  * Delegate call to the functional contract