use UniD1oX

---1
select [StaffID]=MP.STAFF_ID, [StaffName]=MS.NAME, [StaffAddress]=MS.STAFF_ADDRESS, [Supplier Name]= msp.SUPPLIER_NAME ,[Total Purchase]=sum(MATERIAL_PRICE) 
FROM MSPURCHASE AS MP INNER JOIN MSMATERIAL AS MM
ON MP.MATERIAL_ID = MM.MATERIAL_ID
INNER JOIN MSSTAFF MS
ON MS.STAFF_ID = MP.STAFF_ID
inner join MSSUPPLIER MSP
on MP.SUPPLIER_ID = Msp.SUPPLIER_ID
where ms.STAFF_ID like '%[0,2,4,6,8]' and month(TRANSACTION_DATE) = 11
group by mp.STAFF_ID, ms.NAME, ms.STAFF_ADDRESS, msp.SUPPLIER_NAME,MATERIAL_PRICE

---2
select [SalesID] = TRANSACTIONSALES_ID, [CustomerName]=mcu.NAME, [Total Sales Price]= (CLOTH_PRICE * SALES_QUANTITY)
from MSSALES AS MS inner join MSCLOTH as MC
on MS.CLOTH = mc.CLOTH_ID
inner join MSCUSTOMER MCU
on MS.CUSTOMER_ID = mcu.CUSTOMER_ID
where mcu.name like '%M%' and (CLOTH_PRICE * SALES_QUANTITY) > 2000000

---3
select [Months]= month(transaction_date), [Transaction Count] = count(PURCHASETRANSACTION_ID)
from MSPURCHASE as mp inner join MSSTAFF as MS
on Mp.Staff_ID = MS.Staff_ID
inner join MSMATERIAL as MM 
on MM.MATERIAL_ID = MP.MATERIAL_ID
group by TRANSACTION_DATE, PURCHASETRANSACTION_ID
where MS.AGE between 25 and 30
and MATERIAL_PRICE > 1500000


---4
SELECT [CustomerName] = lower(mcu.NAME), [CustomerEmail]= MCU.EMAIL, [CustomerAddress]=MCU.ADDRESS, [Cloth Bought Count]=sum(sales_QUANTITY), [Total Price]= 'IDR ' + cast((MS.sales_quantity * MCl.CLOTH_PRICE)as varchar)
FROM MSCUSTOMER AS MCU INNER JOIN MSSALES AS MS
ON MCU.CUSTOMER_ID = MS.CUSTOMER_ID
INNER JOIN MSCLOTH MCL
ON MS.CLOTH = MCL.CLOTH_ID
WHERE PAYMENTTYPE_ID ='PA008' or PAYMENTTYPE_ID = 'PA004' or PAYMENTTYPE_ID ='PA004' 
group by MCU.NAME, mcu.email, mcu.address, ms.sales_quantity, mcl.CLOTH_PRICE

---5
select [PurchaseID]= RIGHT(RTRIM(PURCHASETRANSACTION_ID), 3), [PurchaseDate] = TRANSACTION_DATE, [StaffName] = ms.NAME, [PaymentTypeName] = payment_type
from MSPURCHASE AS MP inner join MSSTAFF AS MS
on MP.STAFF_ID = MS.STAFF_ID
inner join MSPAYMENTTYPE MPN 
on mpn.paymenttype_ID = MP.PAYMENTTYPE_ID
where GENDER = 'female' and year(getdate()) - AGE > 25
and SALARY > (Select avg (SALARY) from MSSTAFF)

---6
select [SalesID] = TRANSACTIONSALES_ID, [SalesDate] = TRANSACTION_DATE, [CustomerName]= mc.NAME, [CustomerGender] = MC.GENDER 
from MSCUSTOMER AS MC
join MSSALES AS MS on mc.CUSTOMER_ID = MS.CUSTOMER_ID
join mscloth AS MCL on mcl.CLOTH_ID = MS.CLOTH,
(
select [Minimum Value] = min(sales_quantity)
from MSSALES AS MS
where day(TRANSACTION_DATE) = 15
) AS x
where YEAR (TRANSACTION_DATE)= '2021' and sales_quantity < x.[Minimum Value] 

---7
select [PurchaseID]= , [SupplierName]= , [SupplierPhone]= '+62' + RIGHT(PHONE_NUMBER, len(PHONE_NUMBER)-1) , [PurchaseDate]= DATENAME(WEEKDAY, TRANSACTION_DATE)
from MSPURCHASE as MP
join MSSUPPLIER AS MS on mp.SUPPLIER_ID = ms.SUPPLIER_ID
(
select avg(x,sum) AS Average from (
select purchasetransaction_id, [sum] = sum (quantity)
from MSPURCHASE as MP
group by PURCHASETRANSACTION_ID
) as x
) as y where (datepart(weekday), Transaction_Date)+5)%7 beetween 4 and 6 and y.average < Quantity

---8

select
case 
when Gender = 'Male' Then Concat ('Mr. ', MC.Name)
else concat ('Mrs. ', mc.Name)
end as mc.Name, 
mc.PHONE_NUMBER	, mc.Address,
convert (varchar, mc.DATE_OF_BIRTH, 103) AS CustomerDOB, QtyClothSold As ClothCount
from MSCUSTOMER AS MC
join MSSALES as Ms on MC.CUSTOMER_ID = ms.CUSTOMER_ID
join MSCLOTH as MCL ON MCL.CLOTH_ID = MS.CLOTH
(
select [Highest] = MAX (sales_quantity)
from MSSALES as MS
)as x
where mc.name like '%o%' and sales_quantity = x.[Highest]

---9
create view ViewCustomerTransaction 
as 
select [CustomerID]=mc.CUSTOMER_ID, [CustomerName]=mc.NAME, [CustomerEmail]=EMAIL,
[CustomerDOB]=DATE_OF_BIRTH, [Minimum Quantity]= min(Sales_quantity),[Maximum Quantity]=max(sales_quantity)   
from MSCUSTOMER MC
join MSSALES MS on mc.CUSTOMER_ID = MS.CUSTOMER_ID
where YEAR(DATE_OF_BIRTH)>=2000 and EMAIL like '%@yahoo.com'
group by mc.CUSTOMER_ID, mc.NAME, MC.EMAIL, MC.DATE_OF_BIRTH
go

select * from ViewCustomerTransaction 

---10
create view ViewFemaleStaffTransaction
as 
select [StaffID] = ms.STAFF_ID, [StaffName] = UPPER(MS.NAME), [StaffSalary]=CONCAT('Rp. ', SALARY, ',00'), [Material Bought Count]=QUANTITY
from MSSTAFF AS MS
join MSPURCHASE AS MP on ms.STAFF_ID = mp.STAFF_ID
join MSMATERIAL AS MM on MM.MATERIAL_ID = mp.MATERIAL_ID
where gender like 'Female' And SALARY > (select avg(SALARY) from MSstaff)
group by ms.STAFF_ID, ms.NAME, SALARY, QUANTITY
go

select * from ViewFemaleStaffTransaction
