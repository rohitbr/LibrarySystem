# LibrarySystem
A Library system application

1. Made use of Single responsibility principle to let LibraryItem have only one responsibility of maintaining title, UUID and value.
2. Made use of Interface segregation principle to divide LibraryItem's functionality to calculate late fees on itself using another protocol called LateFeeCalculatable.
3. Made use of Liskov's substitution principle while calculating LateFeeCalculatable Type and calling functions for lateFee() on each of the item.
4. Made use of Open closed principle by adding Dvd object to the system only by implementing LibraryItem.
5. Made use of Dependency inversion principle by making use of LibraryItem and LateFeeCalculatable protocols, instead of concrete objects.
6. Unit tested the project with 96% coverage.


![Unit test](https://github.com/user-attachments/assets/a76c7cd1-3c1f-4064-86a3-462301c9def3)
