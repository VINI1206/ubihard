-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/06/2024 às 19:36
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
-- Banco de dados: `ubihard`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id_genero` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id_genero`, `nome`) VALUES
(1, 'Idle'),
(2, 'Clicker'),
(3, 'Souls-like'),
(4, 'Multiplayer'),
(5, 'Singleplayer'),
(6, 'Mineração'),
(7, '2D'),
(8, '3D'),
(9, 'Roguelike'),
(10, 'Roguelite');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo-genero`
--

CREATE TABLE `jogo-genero` (
  `id_jogo` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo-genero`
--

INSERT INTO `jogo-genero` (`id_jogo`, `id_genero`) VALUES
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogo` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `desenvolvedora` varchar(50) NOT NULL,
  `distribuidora` varchar(50) NOT NULL,
  `link_imagem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id_jogo`, `nome`, `descricao`, `valor`, `desenvolvedora`, `distribuidora`, `link_imagem`) VALUES
(1, 'Steamworld Dig', 'SteamWorld Dig é uma aventura de mineração em plataforma com fortes influências Metroidvanianas. Controle Rusty, um robô minerador à vapor solitário, que chega numa velha cidade mineradora em apuros. Escave o velho solo e adquira riquezas enquanto desvenda a ameaça ancestral que espreita as profundezas...', 20.69, 'Form Games', 'Form Games', 'https://cdn.akamai.steamstatic.com/steam/apps/252410/header.jpg?t=1713431694'),
(2, 'Steamworld Dig 2', 'SteamWorld Dig voltou! Escave fundo, encontre tesouros e desenterre horrores do submundo nesta aventura de mineração em plataformas inspirada nos jogos clássicos do estilo Metroidvania.', 37.99, 'Image & Form Games', 'Image & Form Games', 'https://cdn.akamai.steamstatic.com/steam/apps/571310/header.jpg?t=1713431741'),
(3, 'Steamworld Heist', 'Em SteamWorld Heist, você lidera um esquadrão de robôs numa série de tiroteios táticos e épicos. É estratégia por turno com um extra: Mirar manualmente as armas da tripulação, permitindo tiros insanos e ricochetes de balas!', 28.99, 'Image & Form Games', 'Image & Form Games', 'https://cdn.akamai.steamstatic.com/steam/apps/322190/header.jpg?t=1713431767'),
(4, 'SteamWorld Quest: Hand of Gilgamech', 'Lead a party of aspiring heroes through a beautifully hand-drawn world and intense battles using only your wits and a handful of cards. Take on whatever threat comes your way by crafting your own deck choosing from over 100 unique punch-cards!', 47.49, 'Image & Form Games', 'Thunderful Publishing', 'https://cdn.akamai.steamstatic.com/steam/apps/804010/header.jpg?t=1713431801'),
(5, 'SteamWorld Build', 'Cave o caminho para uma nova fronteira enquanto o planeta morre ao seu redor! Vá fundo e construa sem parar para encontrar a tecnologia espacial perdida, ao mesmo tempo que garante água, combustível e conforto para todos! Você tem o que é preciso para alcançar a fronteira final?', 73.99, 'The Station', 'Thunderful Publishing', 'https://cdn.akamai.steamstatic.com/steam/apps/2134770/header.jpg?t=1713431762');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `nome`, `senha`, `data_nascimento`) VALUES
(2, 'nicolascarrilhoh@gmail.com', 'sir.nch', 'deb97a759ee7b8ba42e02dddf2b412fe', '2004-03-26'),
(3, 'Shaolin_matador@gmail.com', 'Shaolin_matador_de_porco', 'c28601671809220cab3db3ae81310805', '2000-01-01');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD UNIQUE KEY `id_genero` (`id_genero`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD UNIQUE KEY `id_jogo` (`id_jogo`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
