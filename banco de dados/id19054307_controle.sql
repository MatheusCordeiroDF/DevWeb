-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17-Set-2022 às 03:16
-- Versão do servidor: 10.5.16-MariaDB
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id19054307_controle`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cc`
--

CREATE TABLE `cc` (
  `id_cc` int(10) UNSIGNED NOT NULL,
  `centro_de_custo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cc`
--

INSERT INTO `cc` (`id_cc`, `centro_de_custo`) VALUES
(12, 8105),
(14, 8268),
(15, 8252),
(18, 8282),
(19, 8279),
(23, 8286);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pa`
--

CREATE TABLE `pa` (
  `id` int(10) UNSIGNED NOT NULL,
  `cc_id_cc` int(11) NOT NULL,
  `solicitacao` int(11) NOT NULL,
  `pedido` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `data1` date NOT NULL,
  `nome` varchar(45) NOT NULL,
  `situacao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pa`
--

INSERT INTO `pa` (`id`, `cc_id_cc`, `solicitacao`, `pedido`, `valor`, `data1`, `nome`, `situacao`) VALUES
(5, 0, 254895, 221564, 651, '2002-06-05', 'Julio Cesar', 'Paga'),
(6, 0, 215356, 235652, 36562, '2022-06-05', 'Matheus Cordeiro GonÃ§alves', 'paga'),
(7, 0, 201564, 254362, 534, '2022-06-05', 'Matheus', 'Paga'),
(8, 0, 254232, 235423, 231, '2022-12-12', 'Matheus', 'Paga'),
(9, 0, 235423, 235423, 235423, '2021-12-12', 'Matheus', 'Paga'),
(11, 11, 254263, 254263, 251, '2002-07-04', 'Matheus', 'Paga'),
(13, 8, 289543, 289984, 29000, '2022-04-22', 'GABRIEL SILVA DE SOUSA', 'Pendente'),
(14, 8, 299234, 293455, 25999, '2022-05-27', 'Carlinhos Chiqueta', 'Paga'),
(21, 12, 234556, 234556, 23, '2022-09-13', 'Isaque Newton', 'PENDENTE');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`id_cc`);

--
-- Índices para tabela `pa`
--
ALTER TABLE `pa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cc`
--
ALTER TABLE `cc`
  MODIFY `id_cc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `pa`
--
ALTER TABLE `pa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
