select u.[Name],u.[Surname], Count(o.[CreatedBy]) [Count of Orders]
from [Membership].[Users] u
left join [dbo].[Orders] o
on u.Id = o.CreatedBy 
group by u.[Name],u.[Surname]

select * from Orders where CreatedAt between '2023-11-01' and '2023-12-01'

select o.Id,o.ShippingCountry,o.ShippingCity,o.ShippingAddress,o.Email, Count(od.Quantity) [CountOfItems], sum(od.Price) [TotalAmount]  
from Orders o
left join OrderDetails od
on o.Id = od.OrderId
group by o.Id,o.ShippingCountry,o.ShippingCity,o.ShippingAddress,o.Email

select top(5) b.[Name], count(p.BrandId) [TotalQuantity] from Brands b
left join Products p
on b.Id = p.BrandId 
group by b.[Name]

select * from Brands

select * from OrderDetails

select * from Products

