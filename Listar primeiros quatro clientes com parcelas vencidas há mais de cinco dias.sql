SELECT TOP 4 Clientes.ClienteId, Clientes.Nome FROM Parcelas
INNER JOIN Financiamentos ON Parcelas.FinanciamentoId = Financiamentos.FinanciamentoId
INNER JOIN Clientes ON Financiamentos.ClienteId = Clientes.ClienteId
WHERE DATEADD(day, 5, Parcelas.DataVencimento) < GETDATE() AND Parcelas.DataPagamento IS NULL
GROUP BY Clientes.ClienteId, Clientes.Nome