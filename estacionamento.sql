-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 14:06
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 40, '1º Andar'),
(3, 35, '2º Andar'),
(4, 45, '3º Andar'),
(5, 30, 'Subsolo 1'),
(6, 25, 'Subsolo 2'),
(7, 20, 'Subsolo 3'),
(8, 60, 'Cobertura'),
(9, 15, 'Anexo Leste');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('111.222.333-44', '1988-03-15 00:00:00', 'carla henriquiel das souzas'),
('123.456.789-11', '2000-12-11 00:00:00', 'Josismar Deolhoemnós da Silva'),
('321.654.987-00', '2002-04-17 00:00:00', 'Lucas Gabriel Nogueira'),
('444.333.222-11', '1990-01-01 00:00:00', 'Beatriz Rocha'),
('555.666.777-88', '2001-07-09 00:00:00', 'Maria Fernanda Lima'),
('741.852.963-10', '1998-08-25 00:00:00', 'Patrícia Gomes Costa'),
('852.963.741-20', '1985-09-10 00:00:00', 'Roberto Carlos Santana'),
('987.654.321-00', '1995-05-21 00:00:00', 'Ana Paula Rodrigues'),
('999.888.777-66', '1979-11-30 00:00:00', 'João Pedro Almeida');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codlugar`) VALUES
(1, '2025-09-01 10:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'ABC1234', 1),
(2, '2025-09-01 11:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'DEF5678', 2),
(3, '2025-09-01 12:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'GHI9012', 3),
(4, '2025-09-01 13:15:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'JKL3456', 4),
(5, '2025-09-01 14:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'MNO7890', 5),
(6, '2025-09-01 15:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'PQR1234', 6),
(7, '2025-09-01 16:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'STU5678', 7),
(8, '2025-09-01 17:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'VWX9012', 8),
(9, '2025-09-01 18:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 'YZA3456', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fiat Uno'),
(2, 'Chevrolet Onix'),
(3, 'Volkswagen Gol'),
(4, 'Toyota Corolla'),
(5, 'Honda Civic'),
(6, 'Hyundai HB20'),
(7, 'Renault Kwid'),
(8, 'Ford Ka'),
(9, 'Nissan Versa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('ABC1234', 'Prata', '123.456.789-11', 1),
('DEF5678', 'cinza azul meio-clar', '987.654.321-00', 2),
('GHI9012', 'Branco', '111.222.333-44', 3),
('JKL3456', 'Vermelho', '555.666.777-88', 4),
('MNO7890', 'Azul', '999.888.777-66', 5),
('PQR1234', 'Cinza', '444.333.222-11', 6),
('STU5678', 'Verde', '321.654.987-00', 7),
('VWX9012', 'Amarelo', '741.852.963-10', 8),
('YZA3456', 'Rosa', '852.963.741-20', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
