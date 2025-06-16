SELECT e1.name
FROM Employee e1
Inner Join Employee e2
On e1.id=e2.managerId 
Group by e2.managerId
having count(e2.managerId)>=5;
