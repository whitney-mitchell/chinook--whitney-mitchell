-- total_invoices_{year}.sql: How many Invoices were there in 2009
-- and 2011?

-- SELECT
-- 	count (i.InvoiceId) as TotalInvoices,
-- 	strftime("%Y", i.InvoiceDate) as InvoiceYear
-- from Invoice i
-- where InvoiceYear = "2011";

-- SELECT
-- 	count (i.InvoiceId)  as TotalInvoices,
-- 	strftime("%Y", i.InvoiceDate) as InvoiceYear
-- from Invoice i
-- where InvoiceYear = "2009";


-- Combined:
SELECT
	count (i.InvoiceId) as TotalInvoices,
	strftime("%Y", i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = "2011"
or InvoiceYear = "2009"
group by InvoiceYear;
