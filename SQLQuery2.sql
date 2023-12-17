--1
select u.[Name],u.[Surname], Count(o.[CreatedBy]) [Count of Orders]
from [Membership].[Users] u
left join [dbo].[Orders] o
on u.Id = o.CreatedBy 
group by u.[Name],u.[Surname]
--2
select * from Orders where CreatedAt > '2023-11-01' and CreatedAt < '2023-12-01'
--3
select o.Id,o.ShippingCountry,o.ShippingCity,o.ShippingAddress,o.Email, Count(od.Quantity) [CountOfItems], (sum(od.Price)-ISNULL(o.DiscountAmount,0)) [TotalAmount] 
from Orders o
left join OrderDetails od
on o.Id = od.OrderId
group by o.Id,o.ShippingCountry,o.ShippingCity,o.ShippingAddress,o.Email, o.DiscountAmount
--4
select top(5) b.[Name], count(od.Quantity) [Quantity]
from OrderDetails od
left join [ProductCatalog] pc on od.CatalogId = pc.Id
left join [Products] p on pc.ProductId = p.Id
left join [Brands] b on p.BrandId = b.Id
group by b.[Name]
order by Quantity desc
--5
select pr.*, p.[Name], b.[Name]
from ProductRates pr
left join [Products] p on pr.ProductId = p.Id
left join [Brands] b on p.BrandId = b.Id


