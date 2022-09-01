SELECT Clientes.ClienteId, Clientes.Nome FROM Parcelas INNER JOIN Financiamentos ON Parcelas.FinanciamentoId = Financiamentos.FinanciamentoId INNER JOIN Clientes ON Financiamentos.ClienteId = Clientes.ClienteId
WHERE Clientes.UF = 'SP'
GROUP BY Clientes.ClienteId, Clientes.Nome
HAVING 60 < 100.0 * SUM(CASE WHEN Parcelas.DataPagamento IS NULL THEN 0 ELSE 1 END) / COUNT(*)