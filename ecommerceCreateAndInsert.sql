-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3390
-- Generation Time: May 19, 2024 at 02:55 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `ID_Categoria` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`ID_Categoria`, `Nome`) VALUES
(1, 'Eletrônicos'),
(2, 'Roupas'),
(3, 'Livros'),
(4, 'Casa e Cozinha'),
(5, 'Esportes'),
(6, 'Beleza'),
(7, 'Brinquedos'),
(8, 'Ferramentas'),
(9, 'Automotivo'),
(10, 'Jardinagem');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `nome`, `email`, `senha`) VALUES
(1, 'João Silva', 'joao.silva@example.com', 'senha123'),
(2, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha456'),
(3, 'Pedro Souza', 'pedro.souza@example.com', 'senha789'),
(4, 'Ana Pereira', 'ana.pereira@example.com', 'senha012'),
(5, 'Lucas Lima', 'lucas.lima@example.com', 'senha345'),
(6, 'Fernanda Costa', 'fernanda.costa@example.com', 'senha678'),
(7, 'Rafael Almeida', 'rafael.almeida@example.com', 'senha901'),
(8, 'Carla Mendes', 'carla.mendes@example.com', 'senha234'),
(9, 'Bruno Rocha', 'bruno.rocha@example.com', 'senha567'),
(10, 'Camila Santos', 'camila.santos@example.com', 'senha890');

-- --------------------------------------------------------

--
-- Table structure for table `itempedido`
--

CREATE TABLE `itempedido` (
  `Quantidade` int(11) NOT NULL,
  `ID_Produto` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Numero_Pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itempedido`
--

INSERT INTO `itempedido` (`Quantidade`, `ID_Produto`, `ID_Cliente`, `Numero_Pedido`) VALUES
(2, 1, 1, 1),
(1, 2, 2, 2),
(3, 3, 3, 3),
(1, 4, 4, 4),
(2, 5, 5, 5),
(1, 6, 6, 6),
(2, 7, 7, 7),
(1, 8, 8, 8),
(3, 9, 9, 9),
(1, 10, 10, 10),
(1, 11, 1, 1),
(2, 1, 2, 2),
(3, 3, 3, 3),
(1, 5, 4, 4),
(2, 2, 5, 5),
(1, 6, 6, 6),
(2, 7, 7, 7),
(1, 9, 8, 8),
(3, 10, 9, 9),
(1, 11, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `ID_Cliente` int(11) NOT NULL,
  `Numero_Pedido` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`ID_Cliente`, `Numero_Pedido`, `Data`, `Status`) VALUES
(1, 1, '2024-05-01', 'Pendente'),
(2, 2, '2024-05-02', 'Enviado'),
(3, 3, '2024-05-03', 'Entregue'),
(4, 4, '2024-05-04', 'Cancelado'),
(5, 5, '2024-05-05', 'Pendente'),
(6, 6, '2024-05-06', 'Enviado'),
(7, 7, '2024-05-07', 'Entregue'),
(8, 8, '2024-05-08', 'Cancelado'),
(9, 9, '2024-05-09', 'Pendente'),
(10, 10, '2024-05-10', 'Enviado');

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `Preco_Unitario` float NOT NULL,
  `ID_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produto`
--

INSERT INTO `produto` (`ID_Produto`, `Nome`, `Descricao`, `Preco_Unitario`, `ID_Categoria`) VALUES
(1, 'Smartphone', 'Smartphone de última geração', 1999.99, 1),
(2, 'Camiseta', 'Camiseta de algodão', 49.9, 2),
(3, 'Livro de Ficção', 'Livro de ficção científica', 29.9, 3),
(4, 'Liquidificador', 'Liquidificador potente', 199.99, 4),
(5, 'Tênis de Corrida', 'Tênis para corrida', 299.9, 5),
(6, 'Perfume', 'Perfume importado', 399.9, 6),
(7, 'Boneca', 'Boneca de pano', 59.9, 7),
(8, 'Furadeira', 'Furadeira elétrica', 149.99, 8),
(9, 'Óleo de Motor', 'Óleo lubrificante para motor', 99.9, 9),
(10, 'Vaso de Planta', 'Vaso de cerâmica', 39.9, 10),
(11, 'Tablet', 'Tablet com tela de 10 polegadas', 999.99, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indexes for table `itempedido`
--
ALTER TABLE `itempedido`
  ADD KEY `fk_Pedido` (`ID_Cliente`,`Numero_Pedido`),
  ADD KEY `fk_Produto` (`ID_Produto`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Numero_Pedido`,`ID_Cliente`),
  ADD KEY `fk_ID_Cliente` (`ID_Cliente`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`ID_Produto`),
  ADD KEY `fk_ID_Categoria` (`ID_Categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Numero_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `ID_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `fk_Pedido` FOREIGN KEY (`ID_Cliente`,`Numero_Pedido`) REFERENCES `pedido` (`ID_Cliente`, `Numero_Pedido`),
  ADD CONSTRAINT `fk_Produto` FOREIGN KEY (`ID_Produto`) REFERENCES `produto` (`ID_Produto`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_ID_Cliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`);

--
-- Constraints for table `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_ID_Categoria` FOREIGN KEY (`ID_Categoria`) REFERENCES `categoria` (`ID_Categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
