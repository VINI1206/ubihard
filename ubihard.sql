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
  `plataformas` varchar(200) NOT NULL, 
  `desenvolvedora` varchar(50) NOT NULL,
  `distribuidora` varchar(50) NOT NULL,
  `lancamento` date NOT NULL,
  `link_imagem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id_jogo`, `nome`, `descricao`, `valor`, `plataformas`, `desenvolvedora`, `distribuidora`, `lancamento`, `link_imagem`) VALUES
(1, 'Steamworld Dig', 'SteamWorld Dig é uma aventura de mineração em plataforma com fortes influências Metroidvanianas. Controle Rusty, um robô minerador à vapor solitário, que chega numa velha cidade mineradora em apuros. Escave o velho solo e adquira riquezas enquanto desvenda a ameaça ancestral que espreita as profundezas...', 20.69, 'Disponível na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop', 'Form Games', 'Form Games', '2013-12-05', 'https://cdn.akamai.steamstatic.com/steam/apps/252410/header.jpg?t=1713431694'),
(2, 'Steamworld Dig 2', 'SteamWorld Dig voltou! Escave fundo, encontre tesouros e desenterre horrores do submundo nesta aventura de mineração em plataformas inspirada nos jogos clássicos do estilo Metroidvania.', 37.99, 'Disponível na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop', 'Image & Form Games', 'Image & Form Games', '2017-09-22', 'https://cdn.akamai.steamstatic.com/steam/apps/571310/header.jpg?t=1713431741'),
(3, 'Steamworld Heist', 'Em SteamWorld Heist, você lidera um esquadrão de robôs numa série de tiroteios táticos e épicos. É estratégia por turno com um extra: Mirar manualmente as armas da tripulação, permitindo tiros insanos e ricochetes de balas!', 28.99, 'Disponível na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop', 'Image & Form Games', 'Image & Form Games', '2016-06-07', 'https://cdn.akamai.steamstatic.com/steam/apps/322190/header.jpg?t=1713431767'),
(4, 'SteamWorld Quest: Hand of Gilgamech', 'Lead a party of aspiring heroes through a beautifully hand-drawn world and intense battles using only your wits and a handful of cards. Take on whatever threat comes your way by crafting your own deck choosing from over 100 unique punch-cards!', 47.49, 'Disponível na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop','Image & Form Games', 'Thunderful Publishing', '2019-05-31', 'https://cdn.akamai.steamstatic.com/steam/apps/804010/header.jpg?t=1713431801'),
(5, 'SteamWorld Build', 'Cave o caminho para uma nova fronteira enquanto o planeta morre ao seu redor! Vá fundo e construa sem parar para encontrar a tecnologia espacial perdida, ao mesmo tempo que garante água, combustível e conforto para todos! Você tem o que é preciso para alcançar a fronteira final?', 73.99, 'Disponível na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop', 'The Station', 'Thunderful Publishing', '2023-12-01', 'https://cdn.akamai.steamstatic.com/steam/apps/2134770/header.jpg?t=1713431762'),
(6, 'Counter-Strike 2', 'Os jogadores são divididos em duas equipes, os Contra-Terroristas(CTs) e os Terroristas(TRs), cada equipe tem seus próprios objetivos dependendo do modo selecionado.', 0, 'Disponivel na Steam', 'Valve', 'Valve', '27 de setembro de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header.jpg?t=1716504320'),
(7, 'PUBG: BATTLEGROUNDS', 'O jogo consiste de até cem jogadores que caem de paraquedas em uma ilha em busca de armas e equipamento a fim de matar os outros jogadores, enquanto tentam sobreviver ao mesmo tempo. A área de jogo diminui progressivamente, confinando os sobreviventes a um espaço cada vez menor e forçando encontros.', 0, 'Disponível na Steam, PlayStation Store, Xbox Store, Google Play Store, App Store.', 'KRAFTON, Inc.', 'KRAFTON, Inc.', '23 de março de 2017', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/578080/header.jpg?t=1713943796'),  
(8, 'Tom Clancys Rainbow Six® Siege', ' É um jogo de tiro na primeira pessoa tático, em que os jogadores assumem o papel de um dos membros da equipe Rainbow, uma unidade contra-terrorista. Os membros têm diferentes nacionalidades, habilidades e equipamentos.', 84.99, 'Disponivel naSteam, Uplay, Epic Games Store, PlayStation Store, Xbox Store', 'Ubisoft Montreal', 'Ubisoft', '1 de dezembro de 2015', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/359550/header.jpg?t=1716985808'),  
(9, 'Call of Duty® Black Ops II', 'É um jogo de tiro em primeira pessoa que se passa em duas épocas distintas: a Guerra Fria nos anos 1980 e um futuro próximo em 2025. O jogo apresenta uma campanha single-player com uma narrativa ramificada que permite escolhas que afetam o desenrolar da história. Além disso, inclui modos multiplayer robustos e o popular modo zumbi.', 274.00, 'Disponivel na Steam, PlayStation Store, Xbox Store', 'Treyarch', 'Activision', '12 de novembro de 2012' ,'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/202970/header.jpg?t=1654830020'),
(10, 'Dota 2', 'Dois times de cinco jogadores cada competem para destruir a "Ancient" do adversário, uma grande estrutura localizada dentro da base inimiga. Cada jogador controla um herói com habilidades únicas, e a cooperação e estratégia são essenciais para a vitória.', 0, 'Disponivel na Steam', 'Valve', 'Valve', '9 de julho de 2013', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/570/header.jpg?t=1714502360'),
(11, 'The Witcher 3: Wild Hunt', 'é um RPG de ação ambientado em um vasto mundo aberto. O jogador controla Geralt de Rívia, um caçador de monstros profissional em uma busca para encontrar sua filha adotiva, Ciri.', 129.99, 'Disponivel na Steam, GOG, Epic Games Store,PlayStation Store, Xbox Store, Nintendo eShop.', 'CD PROJEKT RED', 'CD PROJEKT RED', '18 de maio de 2015', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/292030/header.jpg?t=1716793585'),
(12, 'Baldur’s Gate 3', 'É ambientado nos Reinos Esquecidos, um cenário clássico de Dungeons & Dragons. A trama começa com o personagem do jogador sendo capturado por devoradores de mentes, criaturas que implantam um parasita em seu cérebro.', 199.99, 'Disponivel na Steam, GOG, PlayStation Store (previsto para lançamento em consoles).', 'Larian Studios', 'Larian Studios', ' 3 de agosto de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1086940/header.jpg?t=1713271288'),
(13, 'The Elder Scrolls V: Skyrim', 'É um RPG de ação em mundo aberto que se passa na terra de Skyrim. Os jogadores assumem o papel do Dragonborn, um herói com o poder dos dragões, e devem salvar o mundo de Alduin, um dragão profetizado para destruir o mundo.', 149.00, 'Disponivel na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop.' 'Bethesda Game Studios', 'Bethesda Softworks', '27 de outubro de 2016', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/489830/header.jpg?t=1701807334'),
(14, 'Rust', 'Os jogadores começam com apenas uma pedra e uma tocha e devem coletar recursos, construir abrigos e sobreviver em um ambiente hostil cheio de outros jogadores, animais selvagens e perigos naturais. O jogo enfatiza a interação com outros jogadores, seja por cooperação ou confronto.', 103.49, 'Disponivel na Steam, PlayStation Store, Xbox Store.' 'Facepunch Studios', 'Facepunch Studios', '8 de fevereiro de 2018', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/252490/header.jpg?t=1715591843'),
(15, 'Euro Truck Simulator 2', 'É um simulador de condução de caminhões que permite aos jogadores viajar por diversas cidades europeias, transportando cargas e gerenciando sua própria empresa de transporte.', 61.99, 'Disponivel na Steam' 'SCS Software', 'SCS Software', '18 de outubro de 2012', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/227300/header.jpg?t=1716524980'),
(16, 'Terraria', 'é um jogo de aventura e sandbox em 2D onde os jogadores podem explorar, minerar, construir e lutar contra uma variedade de inimigos em um mundo gerado proceduralmente. O jogo combina elementos de construção com combate e exploração, permitindo uma grande liberdade criativa.', 32.99, 'isponivel naSteam, GOG, PlayStation Store, Xbox Store, Nintendo eShopGoogle Play Store, App Store.' 'Re-Logic', 'Re-Logic', '16 de maio de 2011', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/105600/header.jpg?t=1666290860'),
(17, 'Grand Theft Auto V', 'É um jogo de ação e aventura em mundo aberto que segue a história de três criminosos diferentes: Michael, Franklin e Trevor. O jogo se passa na cidade fictícia de Los Santos e oferece uma vasta gama de atividades e missões.', 79.90, 'Disponivel na Steam, Epic Games Store, Rockstar Games Launcher, PlayStation Store, Xbox Store.' 'Rockstar North', 'Rockstar Games', '14 de abril de 2015', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/271590/header.jpg?t=1716224849'),
(18, 'EA SPORTS FC™ 24', 'É um jogo de simulação de futebol, parte da série anteriormente conhecida como FIFA, oferecendo modos de jogo como Carreira, Ultimate Team e Pro Clubs.', 359.00, 'Disponivel na Steam, Origin, PlayStation Store, Xbox Store.', 'EA Canada & EA Romania', 'Electronic Arts', '29 de setembro de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2195250/header.jpg?t=1713799333'),
(19, 'F1® 24', 'É um simulador de corrida baseado no Campeonato Mundial de Fórmula 1. O jogo oferece uma experiência autêntica de corrida, com todos os carros, equipes e circuitos oficiais da temporada.', 359.00, 'Disponivel na Steam, Origin, PlayStation Store, Xbox Store.', 'Codemasters', 'Electronic Arts', '31 de maio de 2024', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2488620/header.jpg?t=1717208078'),
(20, 'Fishing Planet', 'O jogo oferece uma experiência de pesca autêntica, com física avançada para o comportamento dos peixes, equipamentos realistas e diferentes tipos de iscas e varas. Os jogadores podem explorar vários locais de pesca ao redor do mundo, cada um com seus próprios desafios e espécies de peixes.', 0, 'Steam, PlayStation Store, Xbox Store.', 'Fishing Planet LLC', 'Fishing Planet LLC', '11 de agosto de 2015', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/380600/header.jpg?t=1717404195'),
(21, 'Street Fighter™ 6', 'Street Fighter 6 mantém a jogabilidade competitiva e técnica pela qual a série é conhecida, introduzindo também novos modos de jogo e uma história envolvente para cada personagem.', 249.00, 'Disponivel na Steam, PlayStation Store, Xbox Store.', 'CAPCOM Co., Ltd', 'CAPCOM Co., Ltd', '2 de junho de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1364780/header_alt_assets_10.jpg?t=1717461438'),
(22, 'Marvel SNAP', 'Os jogadores colecionam e constroem baralhos de cartas baseados nos personagens do universo Marvel, cada um com habilidades únicas e sinergias específicas.', 0, 'Disponivel na Google Play Store, App Store, Steam.', 'Second Dinner Studios, Inc', 'Nuverse', '22 de agosto de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1997040/header.jpg?t=1704254289'),
(23, 'Age of Empires II: Definitive Edition', 'O jogo mantém a jogabilidade clássica onde os jogadores constroem e gerenciam civilizações históricas, coletando recursos, construindo exércitos, e competindo em batalhas épicas.', 36.99, 'Disponivel na Steam, Microsoft Store.', 'Forgotten Empires, Tantalus Media, Wicked Witch, Worlds Edge', 'Xbox Game Studios', '14 de novembro de 2019', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/813780/header.jpg?t=1716242966'),
(24, 'Stellaris', 'É um jogo de estratégia em tempo real que se concentra na exploração espacial, gestão de impérios, diplomacia e combate. Os jogadores assumem o controle de uma civilização intergaláctica, expandindo seu território através da exploração de sistemas estelares, colonização de planetas e interação com outras espécies.', 143.99, 'Disponivel na Steam, GOG, PlayStation Store, Xbox Store', 'Paradox Development Studio', 'Paradox Interactive', '9 de maio de 2016', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/281990/header.jpg?t=1716895810'),
(25, 'Slay the Spire', 'é um jogo de construção de baralhos (deck-building) com elementos de roguelike. Os jogadores escolhem diferentes personagens, cada um com seu próprio conjunto de cartas e habilidades únicas, e enfrentam uma série de inimigos enquanto sobem a uma torre proceduralmente gerada. O objetivo é derrotar os chefes em cada andar da torre.', 74.99, 'Disponivel na Steam, GOG, PlayStation Store, Xbox Store, Nintendo eShop, Google Play Store, App Store.', 'Mega Crit', 'Mega Crit', '23 de janeiro de 2019', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/646570/header.jpg?t=1712773871'),
(26, 'Valheim', 'É um jogo de sobrevivência e aventura ambientado em um vasto mundo aberto inspirado na mitologia nórdica. Os jogadores assumem o papel de um guerreiro viking enviado para purgar a terra de Valheim das criaturas que a assombram e trazer ordem para os reinos.', 37.99, 'Disponivel na Steam, Microsoft Store.', 'Iron Gate Studio', 'Coffee Stain Publishing', '2 de fevereiro de 2021', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/892970/header.jpg?t=1717489351'),
(27, 'Hogwarts Legacy', 'no mundo mágico de Harry Potter. Os jogadores assumem o papel de um estudante recém-chegado à Escola de Magia e Bruxaria de Hogwarts nos anos 1800.Explorando um mundo aberto, os jogadores poderão personalizar seu próprio bruxo ou bruxa, frequentar aulas, aprender feitiços e poções, e interagir com personagens icônicos da série.', 249.99, 'Steam, Epic Games Store, PlayStation Store, Xbox Store, Nintendo eShop (versão futura).', 'Avalanche Software', 'Warner Bros. Games', '10 de fevereiro de 2023', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/990080/header.jpg?t=1717689083'),
(28, 'ARK Survival Evolved', 'Os jogadores acordam sem provisões em uma misteriosa ilha chamada ARK. Para sobreviver, eles precisam caçar, colher recursos, construir abrigos e fabricar itens. A ilha está repleta de dinossauros, criaturas pré-históricas e outras ameaças, mas também oferece inúmeras oportunidades para exploração e aventura.', 46.99, 'Steam, Epic Games Store, PlayStation Store, Xbox Store, Nintendo eShop.', ' Studio Wildcard, Instinct Games, Efecto Studios, Virtual Basement LLC', 'Studio Wildcard, Snail Games USA', '27 de agosto de 2017', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/346110/header.jpg?t=1709879597'),
(29, 'Monster Hunter World', 'Os jogadores assumem o papel de caçadores que se aventuram em um vasto mundo aberto cheio de ecossistemas vivos e dinâmicos. O objetivo é caçar monstros gigantes, coletar recursos, e criar equipamentos poderosos para enfrentar desafios cada vez maiores.', 99.90, 'Disponivel na Steam, PlayStation Store, Xbox Store.', 'CAPCOM Co., Ltd.', 'CAPCOM Co., Ltd.', '8 de agosto de 2018', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/346110/header.jpg?t=1709879597');


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
(3, 'Shaolin_matador@gmail.com', 'Shaolin_matador_de_porco', 'c28601671809220cab3db3ae81310805', '2000-01-01'),
(4, 'admin@admin', 'admin', 'aabce1b2ab31ce844bf51776f2224e6f', '1900-01-01');

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
