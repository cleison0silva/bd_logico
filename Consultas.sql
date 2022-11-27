use ecommerce;

select pd.idPedido, pd.Data_pedido, pd.Status_pedido, pr.Nome, pr.Categoria, pr.Valor_unitario from Pedido pd inner join Compras cp on pd.idPedido=cp.idPedido
	inner join Produto pr on cp.idProduto=pr.idProduto;


select sum(e.quantidade) as 'Quantidade', p.Nome from Estoque_disponivel e inner join Produto p on p.idProduto=e.idProduto
	group by p.Nome order by p.Nome;

select count(p.idCliente) as 'Quantidade', concat(c.Pnome,' ',c.UNome) as 'Cliente' from Pedido p inner join Cliente c
	on c.idCliente=p.idCliente
	group by p.idCliente;