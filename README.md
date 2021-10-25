# Smart Contract Upgradeability Example

We want to update the functionality but with the storage remaining. It's important to separate functionality from storage. 

#### General structure:
* Storage Contract
  * User data
* Functional Contarct
  * Logic
  * Functions
* Proxy Contract
  * Address pointer to the functional contract
  * Functions