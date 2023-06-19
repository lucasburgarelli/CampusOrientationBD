insert into person values('6e917bd2-9bf6-4f3f-a49c-59d32d722289', 'a4446228', 'Douglas Alberto', 'lkjh4321');
insert into person values('63bff9fa-8749-46a3-9aed-e77e96639b08', 'a2346755', 'Pedro Cavalcanti', 'poiu0987');
insert into person values('447b319c-cacf-4627-9863-b29d3864c3ac', 'a5546333', 'Jadson Rocha', 'qwer1234');
insert into person values('bd4aba2d-060f-42c3-bed7-f359efc3c55b' ,'a2346799', 'Caio Silva Toledo', 'asdf1234');
insert into person values('d8bddd9a-01cd-490e-915c-f60450c52c93', 'a2345688', 'Lucas Moraes', 'zxcv1234');

insert into course values('5456fc98-387b-4021-98a3-8394dc4a7f21', 'Realidade Virtual', 'Conceitos e aplicações de realidade virtual. Desenvolvimento de ambientes virtuais. Interação em ambientes virtuais. Sistemas de interfaces não convencionais. Realidade virtual imersiva e não imersiva. Arquitetura de sistemas de realidade virtual. Sistemas distribuídos de realidade virtual. Técnicas de modelagem e otimização de ambientes virtuais em sistemas de realidade virtual para plataformas de baixo custo. O padrão VRML97.', '6e917bd2-9bf6-4f3f-a49c-59d32d722289');
insert into course values('ff4b811f-d203-483d-945e-fb082310fd6e', 'Banco de dados 1', 'Visão geral do gerenciamento de banco de dados. Modelo Entidade-Relacionamento (MER). Modelo relacional. Normalização. Álgebra relacional. SQL. Regras de integridade. Projeto de banco de dados relacional.', '63bff9fa-8749-46a3-9aed-e77e96639b08');
insert into course values('2ef80f01-33ac-4bce-ab9b-1b85d667691c', 'Banco de dados 2', 'Gerenciamento de bancos de dados cliente-servidor; Segurança; Importação e exportação de dados. Replicação. Transações: recuperação, controle e concorrência. Programação de banco de dados. Organização e armazenamento de dados: arquivos, índices. Processamento e otimizações de consultas. Bancos de dados distribuídos.', '63bff9fa-8749-46a3-9aed-e77e96639b08');
insert into course values('50b1d462-c657-442b-92c8-a6b2b6ef584c', 'Sistemas Operacionais', 'Estrutura e conceitos basicos de sistemas operacionais; Processo: conceitos, sincronizac a o, comunicacao, escalonamento; Monoprocessamento e multiprocessamento; Memo ria virtual; Gerenciamento de memo ria; Alocacao de recursos e deadlocks; Gerenciamento de sistemas de arquivos; Tolera ncia a falhas em sistemas operacionais.', '447b319c-cacf-4627-9863-b29d3864c3ac');
insert into course values('23c51e73-9db6-428f-81b6-33d8a204a10b', 'Programação Orientada a Objetos', 'Aspectos teóricos do paradigma de orientação a objetos. Elementos básicos de uma linguagem de programação orientada a objetos. Programação orientada a objetos. Tratamento de exceções. Desenvolvimento de interfaces gráficas com o usuário. Projeto de soluções usando programação orientada a objetos.', '447b319c-cacf-4627-9863-b29d3864c3ac');

insert into study values('bd4aba2d-060f-42c3-bed7-f359efc3c55b', 'ff4b811f-d203-483d-945e-fb082310fd6e');
insert into study values('bd4aba2d-060f-42c3-bed7-f359efc3c55b', '50b1d462-c657-442b-92c8-a6b2b6ef584c');
insert into study values('bd4aba2d-060f-42c3-bed7-f359efc3c55b', '23c51e73-9db6-428f-81b6-33d8a204a10b');

insert into study values('d8bddd9a-01cd-490e-915c-f60450c52c93', '5456fc98-387b-4021-98a3-8394dc4a7f21');
insert into study values('d8bddd9a-01cd-490e-915c-f60450c52c93', '2ef80f01-33ac-4bce-ab9b-1b85d667691c');
insert into study values('d8bddd9a-01cd-490e-915c-f60450c52c93', '50b1d462-c657-442b-92c8-a6b2b6ef584c');

insert into class values('23c51e73-9db6-428f-81b6-33d8a204a10b', '2023-06-22T10:50:00Z', '2023-06-22T14:50:00Z', 'I105', 'Classe abstrata e interface');
insert into class values('23c51e73-9db6-428f-81b6-33d8a204a10b', '2023-06-23T13:50:00Z', '2023-06-23T17:50:00Z', 'I105', 'Classe abstrata e interface');
insert into class values('50b1d462-c657-442b-92c8-a6b2b6ef584c', '2023-06-22T13:50:00Z', '2023-06-22T17:50:00Z', 'P005', 'Revisão para a prova 3');
insert into class values('50b1d462-c657-442b-92c8-a6b2b6ef584c', '2023-06-23T13:50:00Z', '2023-06-23T17:50:00Z', 'P005', 'Prova 3');
insert into class values('5456fc98-387b-4021-98a3-8394dc4a7f21', '2023-06-19T19:50:00Z', '2023-06-19T23:50:00Z', 'P101', 'Desenvolvimento de metodologia RA RV');
insert into class values('5456fc98-387b-4021-98a3-8394dc4a7f21', '2023-06-20T19:50:00Z', '2023-06-20T23:50:00Z', 'P101', 'Desenvolvimento de metodologia RA RV');
insert into class values('ff4b811f-d203-483d-945e-fb082310fd6e', '2023-06-22T13:50:00Z', '2023-06-22T17:50:00Z', 'A042', 'DER e ORDER by');
insert into class values('ff4b811f-d203-483d-945e-fb082310fd6e', '2023-06-23T13:50:00Z', '2023-06-23T17:50:00Z', 'A042', 'DER e ORDER by');
insert into class values('2ef80f01-33ac-4bce-ab9b-1b85d667691c', '2023-06-22T13:50:00Z', '2023-06-22T17:50:00Z', 'A040', 'Apresentação dos Projetos');
insert into class values('2ef80f01-33ac-4bce-ab9b-1b85d667691c', '2023-06-23T13:50:00Z', '2023-06-23T17:50:00Z', 'A040', 'Apresentação dos Projetos');
