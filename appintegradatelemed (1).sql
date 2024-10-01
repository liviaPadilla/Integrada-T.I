-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/09/2024 às 22:47
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `appintegradatelemed`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `idade` int(3) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `idade`, `email`, `cpf`) VALUES
(1, 'Ana Silva', 30, 'ana.silva@gmail.com', '12345678901'),
(2, 'João Souza', 28, 'joao.souza@gmail.com', '23456789012'),
(3, 'Maria Oliveira', 32, 'maria.oliveira@gmail.com', '34567890123'),
(4, 'Pedro Santos', 35, 'pedro.santos@gmail.com', '45678901234'),
(5, 'Lucas Costa', 27, 'lucas.costa@gmail.com', '56789012345'),
(6, 'Laura Lima', 29, 'laura.lima@gmail.com', '67890123456'),
(7, 'Rafael Pereira', 33, 'rafael.pereira@gmail.com', '78901234567'),
(8, 'Julia Rocha', 25, 'julia.rocha@gmail.com', '89012345678'),
(9, 'Felipe Almeida', 31, 'felipe.almeida@gmail.com', '90123456789'),
(10, 'Bruna Martins', 26, 'bruna.martins@gmail.com', '01234567890'),
(11, 'Thiago Ferreira', 34, 'thiago.ferreira@gmail.com', '11122333445'),
(12, 'Camila Ribeiro', 27, 'camila.ribeiro@gmail.com', '22233444556'),
(13, 'Gabriel Mendes', 30, 'gabriel.mendes@gmail.com', '33344555667'),
(14, 'Larissa Cardoso', 29, 'larissa.cardoso@gmail.com', '44455666778'),
(15, 'Gustavo Nascimento', 28, 'gustavo.nascimento@gmail.com', '55566777889'),
(16, 'Vanessa Teixeira', 32, 'vanessa.teixeira@gmail.com', '66677888990'),
(17, 'Daniel Azevedo', 31, 'daniel.azevedo@gmail.com', '77788999001'),
(18, 'Mariana Martins', 26, 'mariana.martins@gmail.com', '88899000112'),
(19, 'André Almeida', 35, 'andre.almeida@gmail.com', '99900111223'),
(20, 'Fernanda Soares', 30, 'fernanda.soares@gmail.com', '00011222334'),
(21, 'Carlos Lima', 27, 'carlos.lima@gmail.com', '11122333456'),
(22, 'Isabela Costa', 29, 'isabela.costa@gmail.com', '22233444567'),
(23, 'Henrique Souza', 32, 'henrique.souza@gmail.com', '33344555678'),
(24, 'Tatiane Dias', 28, 'tatiane.dias@gmail.com', '44455666789'),
(25, 'Matheus Lima', 31, 'matheus.lima@gmail.com', '55566777890'),
(26, 'Nicole Santos', 25, 'nicole.santos@gmail.com', '66677888901'),
(27, 'Eduardo Ferreira', 34, 'eduardo.ferreira@gmail.com', '77788999012'),
(28, 'Letícia Oliveira', 29, 'leticia.oliveira@gmail.com', '88899000123'),
(29, 'Alan Ramos', 30, 'alan.ramos@gmail.com', '99900111234'),
(30, 'Clara Martins', 27, 'clara.martins@gmail.com', '00011222345'),
(31, 'Tiago Oliveira', 32, 'tiago.oliveira@gmail.com', '11122333457'),
(32, 'Luana Ribeiro', 26, 'luana.ribeiro@gmail.com', '22233444568'),
(33, 'Samuel Ferreira', 28, 'samuel.ferreira@gmail.com', '33344555679'),
(34, 'Renata Alves', 31, 'renata.alves@gmail.com', '44455666780'),
(35, 'Diego Mendes', 29, 'diego.mendes@gmail.com', '55566777891'),
(36, 'Carla Teixeira', 30, 'carla.teixeira@gmail.com', '66677888902'),
(37, 'Vitor Martins', 35, 'vitor.martins@gmail.com', '77788999013'),
(38, 'Gabriela Rocha', 27, 'gabriela.rocha@gmail.com', '88899000124'),
(39, 'Igor Souza', 26, 'igor.souza@gmail.com', '99900111245'),
(40, 'Milena Pereira', 34, 'milena.pereira@gmail.com', '00011222356'),
(41, 'Rafael Almeida', 28, 'rafael.almeida@gmail.com', '11122333458'),
(42, 'Aline Costa', 30, 'aline.costa@gmail.com', '22233444569'),
(43, 'Lucas Cardoso', 32, 'lucas.cardoso@gmail.com', '33344555680'),
(44, 'Mariana Lima', 29, 'mariana.lima@gmail.com', '44455666781'),
(45, 'Felipe Nascimento', 35, 'felipe.nascimento@gmail.com', '55566777892'),
(46, 'Júlia Santos', 26, 'julia.santos@gmail.com', '66677888903'),
(47, 'Bruno Rocha', 30, 'bruno.rocha@gmail.com', '77788999014'),
(48, 'Larissa Mendes', 28, 'larissa.mendes@gmail.com', '88899000125'),
(49, 'Leonardo Rocha', 29, 'leonardo.rocha@gmail.com', '00000112233'),
(50, 'Roberta Azevedo', 30, 'roberta.azevedo@gmail.com', '11100122334'),
(51, 'Juliana Alves', 28, 'juliana.alves@gmail.com', '22200133445'),
(52, 'Bruno Silva', 34, 'bruno.silva@gmail.com', '33300144556'),
(53, 'Geovana Lima', 27, 'geovana.lima@gmail.com', '44400155667'),
(54, 'Thais Mendes', 30, 'thais.mendes@gmail.com', '55500166778'),
(55, 'Marcos Pereira', 29, 'marcos.pereira@gmail.com', '66600177889'),
(56, 'Eloá Costa', 32, 'eloa.costa@gmail.com', '77700188990'),
(57, 'Isabella Santos', 31, 'isabella.santos@gmail.com', '88800199001'),
(58, 'Vitor Nascimento', 26, 'vitor.nascimento@gmail.com', '99900200112'),
(59, 'Caroline Lima', 30, 'caroline.lima@gmail.com', '00011211223'),
(60, 'Ricardo Oliveira', 35, 'ricardo.oliveira@gmail.com', '11111222334'),
(61, 'Andressa Teixeira', 29, 'andressa.teixeira@gmail.com', '22211233445'),
(62, 'Felipe Martins', 28, 'felipe.martins@gmail.com', '33311244556'),
(63, 'Ana Paula', 30, 'ana.paula@gmail.com', '44411255667'),
(64, 'Raquel Souza', 27, 'raquel.souza@gmail.com', '55511266778'),
(65, 'Amanda Rocha', 34, 'amanda.rocha@gmail.com', '66611277889'),
(66, 'Lúcio Ferreira', 31, 'lucio.ferreira@gmail.com', '77711288990'),
(67, 'Karen Almeida', 28, 'karen.almeida@gmail.com', '88811299001'),
(68, 'Igor Mendes', 29, 'igor.mendes@gmail.com', '99911300112'),
(69, 'Patrícia Lima', 30, 'patricia.lima@gmail.com', '00021311223'),
(70, 'Cíntia Santos', 27, 'cintia.santos@gmail.com', '11121322334'),
(71, 'Luana Teixeira', 32, 'luana.teixeira@gmail.com', '22221333445'),
(72, 'Vinícius Almeida', 30, 'vinicius.almeida@gmail.com', '33321344556'),
(73, 'Paulo Teixeira', 34, 'paulo.teixeira@gmail.com', '44421355667'),
(74, 'Milena Rocha', 28, 'milena.rocha@gmail.com', '55521366778'),
(75, 'Renata Santos', 29, 'renata.santos@gmail.com', '66621377889'),
(76, 'Danilo Lima', 31, 'danilo.lima@gmail.com', '77721388990'),
(77, 'Adriana Alves', 30, 'adriana.alves@gmail.com', '88821399001'),
(78, 'Robson Ferreira', 35, 'robson.ferreira@gmail.com', '99921400112'),
(79, 'Vanessa Nascimento', 28, 'vanessa.nascimento@gmail.com', '00031411223'),
(80, 'Cynthia Almeida', 29, 'cynthia.almeida@gmail.com', '11131422334');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `cliente_id` int(250) NOT NULL,
  `medico` varchar(100) NOT NULL,
  `data` varchar(150) NOT NULL,
  `especialidade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`cliente_id`, `medico`, `data`, `especialidade`) VALUES
(1, 'Dr. Ana Clara', '12/05/80', 'Pediatria'),
(2, 'Dr. João Silva', '23/07/75', 'Cardiologia'),
(3, 'Dr. Maria Oliveira', '14/09/85', 'Dermatologia'),
(4, 'Dr. Pedro Santos', '05/01/82', 'Neurologia'),
(5, 'Dr. Laura Costa', '18/11/78', 'Ginecologia'),
(6, 'Dr. Rafael Pereira', '27/03/77', 'Oftalmologia'),
(7, 'Dr. Julia Rocha', '09/02/88', 'Ortopedia'),
(8, 'Dr. Felipe Almeida', '15/04/83', 'Endocrinologia'),
(9, 'Dr. Bruna Martins', '30/06/86', 'Psiquiatria'),
(10, 'Dr. Thiago Ferreira', '24/08/79', 'Urologia'),
(11, 'Dr. Camila Ribeiro', '21/12/81', 'Gastroenterologia'),
(12, 'Dr. Gabriel Mendes', '10/03/84', 'Anestesiologia'),
(13, 'Dr. Larissa Cardoso', '06/10/76', 'Cirurgia Geral'),
(14, 'Dr. Gustavo Nascimento', '29/01/90', 'Reumatologia'),
(15, 'Dr. Vanessa Teixeira', '02/09/87', 'Otorinolaringologia'),
(16, 'Dr. Daniel Azevedo', '03/11/80', 'Hematologia'),
(17, 'Dr. Mariana Lima', '17/07/83', 'Infectologia'),
(18, 'Dr. Igor Santos', '28/02/89', 'Pneumologia'),
(19, 'Dr. Tatiane Dias', '12/06/75', 'Fisioterapia'),
(20, 'Dr. Henrique Souza', '08/05/82', 'Oncologia'),
(21, 'Dr. Alan Ramos', '15/10/81', 'Pediatria'),
(22, 'Dr. Clara Martins', '22/08/76', 'Cardiologia'),
(23, 'Dr. Thiago Oliveira', '10/01/84', 'Dermatologia'),
(24, 'Dr. Isabela Costa', '30/04/88', 'Neurologia'),
(25, 'Dr. Felipe Soares', '19/09/79', 'Ginecologia'),
(26, 'Dr. Renata Alves', '05/03/77', 'Oftalmologia'),
(27, 'Dr. Igor Mendes', '29/11/83', 'Ortopedia'),
(28, 'Dr. Paula Almeida', '27/02/85', 'Endocrinologia'),
(29, 'Dr. Vitor Martins', '01/06/82', 'Psiquiatria'),
(30, 'Dr. Karine Nascimento', '13/12/80', 'Urologia'),
(31, 'Dr. Rafael Rocha', '17/07/78', 'Gastroenterologia'),
(32, 'Dr. Ana Paula', '09/10/87', 'Anestesiologia'),
(33, 'Dr. Daniel Rocha', '21/04/76', 'Cirurgia Geral'),
(34, 'Dr. Gisele Lima', '11/03/83', 'Reumatologia'),
(35, 'Dr. Otávio Souza', '25/08/89', 'Otorinolaringologia'),
(36, 'Dr. Andressa Teixeira', '07/09/82', 'Hematologia'),
(37, 'Dr. Fabiana Costa', '03/01/85', 'Infectologia'),
(38, 'Dr. Larissa Mendes', '22/06/79', 'Pneumologia'),
(39, 'Dr. Eduardo Lima', '28/12/81', 'Oncologia'),
(40, 'Dr. Milena Teixeira', '14/05/84', 'Pediatria'),
(41, 'Dr. Roberta Azevedo', '10/11/76', 'Cardiologia'),
(42, 'Dr. Igor Costa', '24/02/83', 'Dermatologia'),
(43, 'Dr. Thais Martins', '15/07/88', 'Neurologia'),
(44, 'Dr. Leonardo Ferreira', '29/01/79', 'Ginecologia'),
(45, 'Dr. Milena Alves', '18/03/82', 'Oftalmologia'),
(46, 'Dr. Samuel Nascimento', '21/05/85', 'Ortopedia'),
(47, 'Dr. Priscila Rocha', '13/12/87', 'Endocrinologia'),
(48, 'Dr. Diego Mendes', '30/09/80', 'Psiquiatria'),
(49, 'Dr. Kelly Teixeira', '08/06/81', 'Urologia'),
(50, 'Dr. Cíntia Souza', '16/04/89', 'Gastroenterologia'),
(51, 'Dr. André Almeida', '04/10/84', 'Anestesiologia'),
(52, 'Dr. Fabiano Santos', '11/08/78', 'Cirurgia Geral'),
(53, 'Dr. Renan Lima', '27/03/86', 'Reumatologia'),
(54, 'Dr. Larissa Silva', '12/11/90', 'Otorinolaringologia'),
(55, 'Dr. Mariana Teixeira', '05/01/83', 'Hematologia'),
(56, 'Dr. Carlos Rocha', '09/07/79', 'Infectologia'),
(57, 'Dr. Vanessa Almeida', '02/09/81', 'Pneumologia'),
(58, 'Dr. Flávia Martins', '26/05/85', 'Oncologia'),
(59, 'Dr. Júlio Santos', '23/02/77', 'Pediatria'),
(60, 'Dr. Érika Lima', '28/12/84', 'Cardiologia'),
(61, 'Ana Silva', '15/10/23', 'Pediatria'),
(62, 'João Souza', '12/10/23', 'Cardiologia'),
(63, 'Maria Oliveira', '14/10/23', 'Dermatologia'),
(64, 'Pedro Santos', '13/10/23', 'Oftalmologia'),
(65, 'Laura Lima', '11/10/23', 'Ginecologia'),
(66, 'Felipe Almeida', '10/10/23', 'Ortopedia'),
(67, 'Rafael Pereira', '16/10/23', 'Neurologia'),
(68, 'Bruna Martins', '17/10/23', 'Endocrinologia'),
(69, 'Thiago Ferreira', '18/10/23', 'Psiquiatria'),
(70, 'Gabriel Mendes', '19/10/23', 'Urologia'),
(71, 'Larissa Cardoso', '20/10/23', 'Geriatria'),
(72, 'Gustavo Nascimento', '21/10/23', 'Fisioterapia'),
(73, 'Vanessa Teixeira', '22/10/23', 'Osteopatia'),
(74, 'Daniel Azevedo', '23/10/23', 'Nutrição'),
(75, 'Mariana Martins', '24/10/23', 'Reumatologia'),
(76, 'André Almeida', '25/10/23', 'Oncologia'),
(77, 'Fernanda Soares', '26/10/23', 'Pneumologia'),
(78, 'Carlos Lima', '27/10/23', 'Gastroenterologia'),
(79, 'Isabela Costa', '28/10/23', 'Otorrinolaringologia'),
(80, 'Henrique Souza', '29/10/23', 'Cirurgia Geral');

-- --------------------------------------------------------

--
-- Estrutura para tabela `horario`
--

CREATE TABLE `horario` (
  `cliente_id_id` int(250) NOT NULL,
  `horario` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `horario`
--

INSERT INTO `horario` (`cliente_id_id`, `horario`) VALUES
(1, '09:00'),
(2, '10:30'),
(3, '14:00'),
(4, '11:15'),
(5, '13:45'),
(6, '08:30'),
(7, '16:00'),
(8, '09:30'),
(9, '15:00'),
(10, '12:00'),
(11, '14:30'),
(12, '11:45'),
(13, '10:00'),
(14, '13:15'),
(15, '16:45'),
(16, '08:00'),
(17, '09:15'),
(18, '14:30'),
(19, '11:00'),
(20, '15:30'),
(21, '08:00'),
(22, '08:15'),
(23, '08:30'),
(24, '08:45'),
(25, '09:00'),
(26, '09:15'),
(27, '09:30'),
(28, '09:45'),
(29, '10:00'),
(30, '10:15'),
(31, '10:30'),
(32, '10:45'),
(33, '11:00'),
(34, '11:15'),
(35, '11:30'),
(36, '11:45'),
(37, '12:00'),
(38, '12:15'),
(39, '12:30'),
(40, '12:45'),
(41, '13:00'),
(42, '13:15'),
(43, '13:30'),
(44, '13:45'),
(45, '14:00'),
(46, '14:15'),
(47, '14:30'),
(48, '14:45'),
(49, '15:00'),
(50, '15:15'),
(51, '15:30'),
(52, '15:45'),
(53, '16:00'),
(54, '16:15'),
(55, '16:30'),
(56, '16:45'),
(57, '17:00'),
(58, '17:15'),
(59, '17:30'),
(60, '17:45'),
(61, '18:00'),
(62, '18:15'),
(63, '18:30'),
(64, '18:45'),
(65, '19:00'),
(66, '19:15'),
(67, '19:30'),
(68, '19:45'),
(69, '20:00'),
(70, '20:15'),
(71, '20:30'),
(72, '20:45'),
(73, '21:00'),
(74, '21:15'),
(75, '21:30'),
(76, '21:45'),
(77, '22:00'),
(78, '22:15'),
(79, '22:30'),
(80, '22:45'),
(81, '23:00'),
(82, '23:15'),
(83, '23:30'),
(84, '23:45'),
(85, '00:00'),
(86, '00:15'),
(87, '00:30'),
(88, '00:45');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices de tabela `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`cliente_id_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `cliente_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `horario`
--
ALTER TABLE `horario`
  MODIFY `cliente_id_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
