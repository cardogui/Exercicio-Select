-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Maio-2025 às 03:28
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `colecaocds`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cds`
--

CREATE TABLE `cds` (
  `Codigo` int(11) NOT NULL,
  `Nome_cd` varchar(100) DEFAULT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` decimal(10,2) DEFAULT NULL,
  `LocalCompra` varchar(100) DEFAULT NULL,
  `Album` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cds`
--

INSERT INTO `cds` (`Codigo`, `Nome_cd`, `DataCompra`, `ValorPago`, `LocalCompra`, `Album`) VALUES
(1, 'Acustico MTV', '2023-01-15', '29.90', 'Submarino', 'Sim'),
(2, 'Greatest Hits', '2022-11-20', '39.90', 'Amazon', 'Sim'),
(3, 'Trilha Sonora Filme X', '2023-03-05', '25.00', 'Americanas', 'Nao'),
(4, 'Musicas Internacionais', '2024-02-12', '19.99', 'Mercado Livre', 'Nao'),
(5, 'Jose Pedro Ao Vivo', '2023-09-30', '45.50', 'Submarino', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `Codigo` int(11) NOT NULL,
  `CodigoCD` int(11) DEFAULT NULL,
  `Numero_musica` int(11) DEFAULT NULL,
  `Nome_musica` varchar(100) DEFAULT NULL,
  `Artista` varchar(100) DEFAULT NULL,
  `Tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`Codigo`, `CodigoCD`, `Numero_musica`, `Nome_musica`, `Artista`, `Tempo`) VALUES
(1, 1, 1, 'Intro Acustico', 'Banda A', '00:02:15'),
(2, 1, 2, 'Som da Paz', 'Banda A', '00:04:10'),
(3, 1, 3, 'Reflexao', 'Banda A', '00:03:50'),
(4, 2, 1, 'Classico 1', 'Artista X', '00:05:00'),
(5, 2, 2, 'Classico 2', 'Artista Y', '00:04:30'),
(6, 2, 3, 'Classico 3', 'Artista Z', '00:06:00'),
(7, 3, 1, 'Tema Aventura', 'Compositor F', '00:03:40'),
(8, 3, 2, 'Romance Final', 'Compositor F', '00:04:20'),
(9, 3, 3, 'Tragedia', 'Compositor F', '00:05:10'),
(10, 4, 1, 'Hello World', 'DJ Mike', '00:02:55'),
(11, 4, 2, 'Dance Now', 'DJ Mike', '00:03:15'),
(12, 4, 3, 'Silent Heart', 'Singer S', '00:04:45'),
(13, 5, 1, 'Viva Jose', 'Jose Pedro', '00:05:20'),
(14, 5, 2, 'Cancao da Alma', 'Jose Pedro', '00:06:00'),
(15, 5, 3, 'Despedida', 'Jose Pedro', '00:04:40');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodigoCD` (`CodigoCD`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `cds` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
