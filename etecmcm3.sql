-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/05/2025 às 18:06
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm3`
--
CREATE DATABASE IF NOT EXISTS `etecmcm3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm3`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'limpeza'),
(2, 'frios'),
(3, 'laticinios'),
(4, 'carnes'),
(5, 'enlatados'),
(6, 'congelados'),
(7, 'eletroeletrodomesticos'),
(8, 'perfumaria'),
(9, 'bebidas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `marca`, `qtde`, `preco`, `id_categoria`, `unidade_medida`) VALUES
(1, 'sabão em pó', 'omo', 4, 0.00, 1, 'peso'),
(2, 'detergente', 'Ypê', 20, 0.00, 1, 'unidade'),
(3, 'mussarella', 'Italac', 100, 0.00, 2, 'peso'),
(4, 'iogurte', 'Danone', 5, 0.00, 3, 'peso'),
(5, 'pernil', 'Sadia', 10, 0.00, 4, 'peso'),
(6, 'feijão', 'Kicaldo', 50, 0.00, 5, 'unidade'),
(7, 'sorvete', 'Kibon', 5, 0.00, 6, 'peso'),
(8, 'liquidificador', 'phillips', 1, 35.00, 7, 'unidade'),
(9, 'presunto', 'Sadia', 30, 45.00, 2, 'peso'),
(10, 'leite', 'Italac', 50, 4.59, 3, 'litro'),
(11, 'frango', 'Seara', 20, 18.90, 4, 'peso'),
(12, 'milho enlatado', 'Quero', 40, 3.50, 5, 'unidade'),
(13, 'lasanha congelada', 'Perdigão', 10, 12.90, 6, 'unidade'),
(14, 'batedeira', 'Arno', 2, 120.00, 7, 'unidade'),
(15, 'shampoo', 'Pantene', 15, 14.99, 8, 'unidade'),
(16, 'desodorante', 'Rexona', 30, 9.99, 8, 'unidade'),
(17, 'refrigerante', 'Coca-Cola', 25, 7.50, 9, 'litro'),
(18, 'suco de laranja', 'Del Valle', 20, 6.80, 9, 'litro');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
