use ecommerce;

show tables;
-- idClient, Fname, Lname, CPF, Address
insert into Clients (Fname, Lname, CPF, Address) 
	   values('Marta','Silva', 12346789, 'rua silva 99, Guarabira - Cidade das flores'),
		     ('Matheus','Soares', 987654321,'rua santos 111, Centro - João Pessoa'),
			 ('Ronaldo','Silva', 45678913,'avenida alemeda 23, Centro - São Paulo'),
			 ('Gustavo','França', 789123456,'rua campeão 861, Centro - Rio de Janeiro'),
			 ('Robeson','Assis', 98745631,'avenidade ssto 19, Centro - Alemão'),
			 ('Isabely','Nascimento', 654789123,'rua das flores 28, Centro - Blumenau');


insert into product (Pname, classification_kids, category, avaliação, size) values
							  ('Fone de ouvido',false,'Eletrônico','4',null),
                              ('Barbie Elsa',true,'Brinquedos','3',null),
                              ('Body Carters',true,'Vestimenta','5',null),
                              ('Microfone Vedo - Youtuber',False,'Eletrônico','4',null),
                              ('Sofá retrátil',False,'Móveis','3','3x57x80'),
                              ('Farinha de arroz',False,'Alimentos','2',null),
                              ('Fire Stick Amazon',False,'Eletrônico','3',null);

desc Fornecedor;
insert into Fornecedor(empresa, CNPJ, Telefone)
	values ('Veste Bem ltda','28528494000109','6139870011'),
		   ('Infortel ltda','39857923000108','1134765643'),
           ('Shopping da Casa ltda','97597214000129','1199760011');

desc Estoque;
insert into Estoque(local)
	values ('São Paulo'),
			('Curitiba'),
            ('Brasilia'),
            ('Goiânia');


insert into vendedor (Name, região, cpf) values 
						('Gustavo', 'São Paulo' 22789456321),
					    ('Brenda','Rio de Janeiro',123456783)
					('Carlos', 'Recife', 12345678010)

