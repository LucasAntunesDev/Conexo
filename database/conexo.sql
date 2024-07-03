-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jul-2024 às 13:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `conexo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome`, `professor_id`, `created_at`, `updated_at`) VALUES
(1, 'Disciplina 1', 1, NULL, NULL),
(2, 'Disciplina 2', 2, NULL, NULL),
(3, 'Disciplina 3', 3, NULL, NULL),
(4, 'Disciplina 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(9, 'Personagens que usam verde', NULL, NULL),
(10, 'Temperos', NULL, NULL),
(11, 'Internet', NULL, NULL),
(12, 'Meios de comunicação obsoletos', NULL, NULL),
(13, 'Adjetivos relativos a frequência', NULL, '2024-07-03 02:12:47'),
(14, 'Itens de papelaria', NULL, NULL),
(15, 'Cosméticos labiais', NULL, NULL),
(16, 'Carnaval', NULL, NULL),
(17, 'Ritmos musicais', NULL, NULL),
(18, 'Enorme', NULL, NULL),
(19, 'Clássicos literários', NULL, NULL),
(20, 'Roda (de) ___', NULL, NULL),
(21, 'Usados no jardim', NULL, NULL),
(22, 'Inteligente', NULL, NULL),
(23, 'Pássaros', NULL, NULL),
(24, 'Funções de modelos', NULL, NULL),
(25, 'Típicos do Rio Grande do Sul', NULL, NULL),
(26, 'Sobremesas geladas', NULL, NULL),
(27, 'Apóstolos', NULL, NULL),
(28, 'Olívias famosas', NULL, NULL),
(29, 'Critérios para apuração do carnaval', NULL, NULL),
(30, 'Marsupiais', NULL, NULL),
(31, 'Instrumentos musicais', NULL, NULL),
(32, 'Especiarias', NULL, NULL),
(33, 'Reações comuns a picadas de insetos', NULL, NULL),
(34, 'Órgãos do corpo humano', NULL, NULL),
(35, 'Relacionados a sons', NULL, NULL),
(36, 'Ratos de desenhos animados', NULL, NULL),
(37, 'Quadrinhos', NULL, NULL),
(38, 'Realizados no hospital', NULL, NULL),
(39, 'Os/As três ___', NULL, NULL),
(40, 'Procedimentos policiais', NULL, NULL),
(41, 'Planetas', NULL, NULL),
(42, 'Mitologia grega', NULL, NULL),
(43, 'Variedades de bananas', NULL, NULL),
(44, 'Filmes da Disney', NULL, NULL),
(45, 'Sinônimos de exposição', NULL, NULL),
(46, 'Direitos humanos', NULL, NULL),
(47, 'Árvores', NULL, NULL),
(48, 'Bairros de São Paulo', NULL, NULL),
(49, 'Letras gregas', NULL, NULL),
(50, 'Peixes de aquário', NULL, NULL),
(51, 'Emite sons de animais', NULL, NULL),
(52, 'Personagens de Pulp Fiction', NULL, NULL),
(53, 'Tubérculos', NULL, NULL),
(54, 'Indumentária real', NULL, NULL),
(55, 'Cargos auxiliares', NULL, NULL),
(56, 'Cães de desenhos animados', NULL, NULL),
(57, 'Jogos de baralho', NULL, NULL),
(58, 'Marcas de alimentos', NULL, NULL),
(59, 'Quem tem boa saúde', NULL, NULL),
(60, 'Calma', NULL, NULL),
(61, 'Fontes de energia', NULL, NULL),
(62, 'Participantes num processo judicial', NULL, NULL),
(63, 'Notas musicais', NULL, NULL),
(64, 'Advérbios de lugar', NULL, NULL),
(65, 'Fórmula 1', NULL, NULL),
(66, '__ vermelho', NULL, NULL),
(67, 'Chocolates da Garoto 1', NULL, NULL),
(68, 'Ilhas Famosas', NULL, NULL),
(69, 'Enfeite', NULL, NULL),
(70, 'Reinos Biológicos', NULL, NULL),
(71, 'Sinônimos de Vínculo', NULL, NULL),
(72, 'RPG', NULL, NULL),
(73, 'Sociólogos', NULL, NULL),
(75, 'Receita de quindim', NULL, NULL),
(76, 'Aquele que comanda', NULL, NULL),
(77, 'Aves', NULL, NULL),
(78, 'Espécies de Pinguins', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos_disciplinas`
--

CREATE TABLE `grupos_disciplinas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disciplina_id` bigint(20) UNSIGNED NOT NULL,
  `grupo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `grupos_disciplinas`
--

INSERT INTO `grupos_disciplinas` (`id`, `disciplina_id`, `grupo_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2024-07-03 02:44:59', '2024-07-03 02:44:59'),
(2, 1, 9, '2024-07-03 02:45:17', '2024-07-03 02:45:17'),
(3, 1, 9, '2024-07-03 02:45:21', '2024-07-03 02:45:21'),
(4, 1, 9, '2024-07-03 02:45:25', '2024-07-03 02:45:25'),
(5, 1, 9, '2024-07-03 02:45:29', '2024-07-03 02:45:29'),
(6, 1, 9, '2024-07-03 02:45:33', '2024-07-03 02:45:33'),
(7, 1, 9, '2024-07-03 02:45:37', '2024-07-03 02:45:37'),
(8, 1, 9, '2024-07-03 02:45:41', '2024-07-03 02:45:41'),
(10, 1, 9, '2024-07-03 02:45:48', '2024-07-03 02:45:48'),
(11, 1, 9, '2024-07-03 02:45:52', '2024-07-03 02:45:52'),
(12, 1, 9, '2024-07-03 02:45:58', '2024-07-03 02:45:58'),
(13, 1, 9, '2024-07-03 02:46:02', '2024-07-03 02:46:02'),
(14, 1, 9, '2024-07-03 02:46:06', '2024-07-03 02:46:06'),
(15, 1, 9, '2024-07-03 02:46:10', '2024-07-03 02:46:10'),
(16, 1, 9, '2024-07-03 02:46:14', '2024-07-03 02:46:14'),
(17, 1, 10, '2024-07-03 02:50:36', '2024-07-03 02:50:36'),
(18, 1, 11, '2024-07-03 02:50:39', '2024-07-03 02:50:39'),
(19, 1, 12, '2024-07-03 02:50:43', '2024-07-03 02:50:43'),
(20, 1, 13, '2024-07-03 02:50:48', '2024-07-03 02:50:48'),
(21, 1, 14, '2024-07-03 02:50:54', '2024-07-03 02:50:54'),
(22, 1, 15, '2024-07-03 02:50:58', '2024-07-03 02:50:58'),
(23, 1, 16, '2024-07-03 02:51:02', '2024-07-03 02:51:02'),
(24, 1, 17, '2024-07-03 02:51:08', '2024-07-03 02:51:08'),
(25, 1, 18, '2024-07-03 02:52:08', '2024-07-03 02:52:08'),
(26, 1, 19, '2024-07-03 02:52:18', '2024-07-03 02:52:18'),
(27, 1, 20, '2024-07-03 02:52:20', '2024-07-03 02:52:20'),
(28, 1, 21, '2024-07-03 02:52:23', '2024-07-03 02:52:23'),
(29, 1, 23, '2024-07-03 02:52:26', '2024-07-03 02:52:26'),
(30, 1, 24, '2024-07-03 02:52:29', '2024-07-03 02:52:29'),
(31, 1, 25, '2024-07-03 02:59:18', '2024-07-03 02:59:18'),
(32, 1, 26, '2024-07-03 02:59:22', '2024-07-03 02:59:22'),
(33, 1, 27, '2024-07-03 02:59:25', '2024-07-03 02:59:25'),
(34, 1, 28, '2024-07-03 02:59:27', '2024-07-03 02:59:27'),
(35, 1, 29, '2024-07-03 02:59:36', '2024-07-03 02:59:36'),
(36, 1, 30, '2024-07-03 02:59:39', '2024-07-03 02:59:39'),
(37, 1, 31, '2024-07-03 02:59:42', '2024-07-03 02:59:42'),
(38, 1, 32, '2024-07-03 02:59:45', '2024-07-03 02:59:45'),
(39, 1, 33, '2024-07-03 02:59:59', '2024-07-03 02:59:59'),
(40, 1, 34, '2024-07-03 03:00:01', '2024-07-03 03:00:01'),
(41, 1, 35, '2024-07-03 03:00:03', '2024-07-03 03:00:03'),
(42, 1, 36, '2024-07-03 03:00:06', '2024-07-03 03:00:06'),
(43, 1, 37, '2024-07-03 03:00:23', '2024-07-03 03:00:23'),
(44, 1, 38, '2024-07-03 03:00:25', '2024-07-03 03:00:25'),
(45, 1, 39, '2024-07-03 03:00:28', '2024-07-03 03:00:28'),
(46, 1, 40, '2024-07-03 03:00:30', '2024-07-03 03:00:30'),
(47, 1, 41, '2024-07-03 14:13:40', '2024-07-03 14:13:40'),
(48, 1, 42, '2024-07-03 14:13:42', '2024-07-03 14:13:42'),
(49, 1, 43, '2024-07-03 14:13:44', '2024-07-03 14:13:44'),
(50, 1, 44, '2024-07-03 14:13:46', '2024-07-03 14:13:46'),
(51, 1, 45, '2024-07-03 14:13:48', '2024-07-03 14:13:48'),
(52, 1, 46, '2024-07-03 14:13:50', '2024-07-03 14:13:50'),
(53, 1, 47, '2024-07-03 14:13:52', '2024-07-03 14:13:52'),
(54, 1, 48, '2024-07-03 14:13:54', '2024-07-03 14:13:54'),
(55, 1, 49, '2024-07-03 14:14:21', '2024-07-03 14:14:21'),
(56, 1, 50, '2024-07-03 14:14:24', '2024-07-03 14:14:24'),
(57, 1, 51, '2024-07-03 14:14:26', '2024-07-03 14:14:26'),
(58, 1, 52, '2024-07-03 14:14:28', '2024-07-03 14:14:28'),
(59, 1, 53, '2024-07-03 14:14:38', '2024-07-03 14:14:38'),
(60, 1, 54, '2024-07-03 14:14:49', '2024-07-03 14:14:49'),
(61, 1, 55, '2024-07-03 14:14:51', '2024-07-03 14:14:51'),
(62, 1, 56, '2024-07-03 14:14:53', '2024-07-03 14:14:53'),
(63, 1, 57, '2024-07-03 14:14:55', '2024-07-03 14:14:55'),
(64, 1, 58, '2024-07-03 14:14:57', '2024-07-03 14:14:57'),
(65, 1, 59, '2024-07-03 14:14:59', '2024-07-03 14:14:59'),
(66, 1, 60, '2024-07-03 14:15:01', '2024-07-03 14:15:01'),
(67, 1, 63, '2024-07-03 14:15:15', '2024-07-03 14:15:15'),
(68, 1, 62, '2024-07-03 14:15:17', '2024-07-03 14:15:17'),
(69, 1, 61, '2024-07-03 14:15:19', '2024-07-03 14:15:19'),
(70, 1, 64, '2024-07-03 14:15:21', '2024-07-03 14:15:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos_jogos`
--

CREATE TABLE `grupos_jogos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grupo_id` bigint(20) UNSIGNED NOT NULL,
  `jogo_id` bigint(20) UNSIGNED NOT NULL,
  `palavra_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos_palavras`
--

CREATE TABLE `grupos_palavras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grupo_id` bigint(20) UNSIGNED NOT NULL,
  `palavra_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `grupos_palavras`
--

INSERT INTO `grupos_palavras` (`id`, `grupo_id`, `palavra_id`, `created_at`, `updated_at`) VALUES
(1, 9, 25, '2024-07-03 02:09:05', '2024-07-03 02:09:05'),
(2, 9, 26, '2024-07-03 02:09:13', '2024-07-03 02:09:13'),
(3, 9, 27, '2024-07-03 02:09:20', '2024-07-03 02:09:20'),
(4, 9, 28, '2024-07-03 02:09:27', '2024-07-03 02:09:27'),
(5, 10, 29, '2024-07-03 02:09:43', '2024-07-03 02:09:43'),
(6, 10, 30, '2024-07-03 02:09:48', '2024-07-03 02:09:48'),
(7, 10, 31, '2024-07-03 02:09:53', '2024-07-03 02:09:53'),
(8, 10, 32, '2024-07-03 02:09:57', '2024-07-03 02:09:57'),
(9, 11, 33, '2024-07-03 02:10:17', '2024-07-03 02:10:17'),
(10, 11, 34, '2024-07-03 02:10:21', '2024-07-03 02:10:21'),
(11, 11, 35, '2024-07-03 02:10:27', '2024-07-03 02:10:27'),
(12, 11, 36, '2024-07-03 02:10:32', '2024-07-03 02:10:32'),
(13, 11, 28, '2024-07-03 02:10:42', '2024-07-03 02:10:42'),
(14, 12, 37, '2024-07-03 02:11:18', '2024-07-03 02:11:18'),
(15, 12, 38, '2024-07-03 02:11:23', '2024-07-03 02:11:23'),
(16, 12, 39, '2024-07-03 02:11:27', '2024-07-03 02:11:27'),
(17, 12, 40, '2024-07-03 02:11:36', '2024-07-03 02:11:36'),
(18, 13, 41, '2024-07-03 02:12:15', '2024-07-03 02:12:15'),
(19, 13, 42, '2024-07-03 02:12:20', '2024-07-03 02:12:20'),
(20, 13, 43, '2024-07-03 02:12:24', '2024-07-03 02:12:24'),
(21, 13, 44, '2024-07-03 02:12:31', '2024-07-03 02:12:31'),
(22, 13, 45, '2024-07-03 02:12:36', '2024-07-03 02:12:36'),
(23, 14, 45, '2024-07-03 02:13:06', '2024-07-03 02:13:06'),
(24, 14, 46, '2024-07-03 02:13:10', '2024-07-03 02:13:10'),
(25, 14, 47, '2024-07-03 02:13:16', '2024-07-03 02:13:16'),
(26, 14, 48, '2024-07-03 02:13:20', '2024-07-03 02:13:20'),
(27, 15, 49, '2024-07-03 02:13:52', '2024-07-03 02:13:52'),
(28, 15, 50, '2024-07-03 02:14:00', '2024-07-03 02:14:00'),
(29, 15, 51, '2024-07-03 02:14:04', '2024-07-03 02:14:04'),
(30, 15, 52, '2024-07-03 02:14:09', '2024-07-03 02:14:09'),
(31, 16, 53, '2024-07-03 02:14:29', '2024-07-03 02:14:29'),
(32, 16, 54, '2024-07-03 02:14:33', '2024-07-03 02:14:33'),
(33, 16, 55, '2024-07-03 02:14:41', '2024-07-03 02:14:41'),
(34, 16, 56, '2024-07-03 02:14:46', '2024-07-03 02:14:46'),
(35, 17, 57, '2024-07-03 02:15:43', '2024-07-03 02:15:43'),
(36, 17, 58, '2024-07-03 02:15:47', '2024-07-03 02:15:47'),
(37, 17, 59, '2024-07-03 02:15:52', '2024-07-03 02:15:52'),
(38, 17, 60, '2024-07-03 02:15:56', '2024-07-03 02:15:56'),
(39, 18, 61, '2024-07-03 02:16:28', '2024-07-03 02:16:28'),
(40, 18, 62, '2024-07-03 02:16:31', '2024-07-03 02:16:31'),
(41, 18, 63, '2024-07-03 02:16:36', '2024-07-03 02:16:36'),
(42, 18, 64, '2024-07-03 02:16:40', '2024-07-03 02:16:40'),
(43, 19, 65, '2024-07-03 02:17:29', '2024-07-03 02:17:29'),
(44, 19, 66, '2024-07-03 02:17:33', '2024-07-03 02:17:33'),
(45, 19, 67, '2024-07-03 02:17:36', '2024-07-03 02:17:36'),
(46, 19, 68, '2024-07-03 02:17:40', '2024-07-03 02:17:40'),
(47, 19, 425, '2024-07-03 02:18:17', '2024-07-03 02:18:17'),
(48, 19, 426, '2024-07-03 02:18:25', '2024-07-03 02:18:25'),
(49, 20, 70, '2024-07-03 02:19:04', '2024-07-03 02:19:04'),
(50, 16, 70, '2024-07-03 02:19:19', '2024-07-03 02:19:19'),
(51, 17, 70, '2024-07-03 02:19:25', '2024-07-03 02:19:25'),
(52, 20, 71, '2024-07-03 02:19:45', '2024-07-03 02:19:45'),
(53, 20, 69, '2024-07-03 02:20:03', '2024-07-03 02:20:03'),
(54, 16, 73, '2024-07-03 02:20:17', '2024-07-03 02:20:17'),
(55, 21, 73, '2024-07-03 02:20:24', '2024-07-03 02:20:24'),
(56, 21, 74, '2024-07-03 02:20:51', '2024-07-03 02:20:51'),
(57, 21, 75, '2024-07-03 02:20:58', '2024-07-03 02:20:58'),
(58, 21, 76, '2024-07-03 02:21:05', '2024-07-03 02:21:05'),
(59, 16, 81, '2024-07-03 02:21:24', '2024-07-03 02:21:24'),
(60, 23, 81, '2024-07-03 02:21:31', '2024-07-03 02:21:31'),
(61, 22, 80, '2024-07-03 02:21:40', '2024-07-03 02:21:40'),
(62, 22, 79, '2024-07-03 02:21:49', '2024-07-03 02:21:49'),
(63, 22, 78, '2024-07-03 02:22:02', '2024-07-03 02:22:02'),
(64, 22, 77, '2024-07-03 02:22:22', '2024-07-03 02:22:22'),
(65, 23, 82, '2024-07-03 02:26:53', '2024-07-03 02:26:53'),
(66, 23, 83, '2024-07-03 02:27:04', '2024-07-03 02:27:04'),
(67, 23, 84, '2024-07-03 02:27:11', '2024-07-03 02:27:11'),
(68, 25, 89, '2024-07-03 02:35:41', '2024-07-03 02:35:41'),
(69, 25, 90, '2024-07-03 02:35:46', '2024-07-03 02:35:46'),
(70, 25, 91, '2024-07-03 02:35:58', '2024-07-03 02:35:58'),
(71, 25, 92, '2024-07-03 02:36:08', '2024-07-03 02:36:08'),
(72, 26, 93, '2024-07-03 02:36:34', '2024-07-03 02:36:34'),
(73, 26, 94, '2024-07-03 02:36:41', '2024-07-03 02:36:41'),
(74, 26, 95, '2024-07-03 02:36:46', '2024-07-03 02:36:46'),
(75, 26, 96, '2024-07-03 02:36:51', '2024-07-03 02:36:51'),
(76, 27, 97, '2024-07-03 02:37:27', '2024-07-03 02:37:27'),
(77, 27, 98, '2024-07-03 02:37:40', '2024-07-03 02:37:40'),
(78, 27, 99, '2024-07-03 02:37:49', '2024-07-03 02:37:49'),
(79, 27, 100, '2024-07-03 02:37:57', '2024-07-03 02:37:57'),
(80, 28, 101, '2024-07-03 02:41:23', '2024-07-03 02:41:23'),
(81, 28, 102, '2024-07-03 02:41:25', '2024-07-03 02:41:25'),
(82, 28, 103, '2024-07-03 02:41:31', '2024-07-03 02:41:31'),
(83, 28, 104, '2024-07-03 02:41:41', '2024-07-03 02:41:41'),
(84, 29, 105, '2024-07-03 02:42:02', '2024-07-03 02:42:02'),
(85, 29, 106, '2024-07-03 02:42:10', '2024-07-03 02:42:10'),
(86, 29, 107, '2024-07-03 02:42:17', '2024-07-03 02:42:17'),
(87, 29, 108, '2024-07-03 02:42:23', '2024-07-03 02:42:23'),
(88, 30, 109, '2024-07-03 02:42:51', '2024-07-03 02:42:51'),
(89, 30, 110, '2024-07-03 02:42:59', '2024-07-03 02:42:59'),
(90, 30, 111, '2024-07-03 02:43:44', '2024-07-03 02:43:44'),
(91, 30, 112, '2024-07-03 02:43:51', '2024-07-03 02:43:51'),
(92, 31, 114, '2024-07-03 02:49:35', '2024-07-03 02:49:35'),
(93, 31, 115, '2024-07-03 02:49:53', '2024-07-03 02:49:53'),
(94, 31, 116, '2024-07-03 02:50:02', '2024-07-03 02:50:02'),
(95, 31, 113, '2024-07-03 02:50:25', '2024-07-03 02:50:25'),
(96, 32, 117, '2024-07-03 02:52:51', '2024-07-03 02:52:51'),
(97, 32, 118, '2024-07-03 02:53:31', '2024-07-03 02:53:31'),
(98, 32, 119, '2024-07-03 02:53:47', '2024-07-03 02:53:47'),
(99, 32, 120, '2024-07-03 02:53:53', '2024-07-03 02:53:53'),
(100, 32, 115, '2024-07-03 02:53:57', '2024-07-03 02:53:57'),
(101, 33, 121, '2024-07-03 02:54:16', '2024-07-03 02:54:16'),
(102, 33, 122, '2024-07-03 02:54:25', '2024-07-03 02:54:25'),
(103, 33, 123, '2024-07-03 02:54:34', '2024-07-03 02:54:34'),
(104, 33, 124, '2024-07-03 02:54:39', '2024-07-03 02:54:39'),
(105, 34, 125, '2024-07-03 02:54:50', '2024-07-03 02:54:50'),
(106, 34, 126, '2024-07-03 02:54:57', '2024-07-03 02:54:57'),
(107, 34, 127, '2024-07-03 02:55:02', '2024-07-03 02:55:02'),
(108, 34, 128, '2024-07-03 02:55:12', '2024-07-03 02:55:12'),
(109, 35, 129, '2024-07-03 02:55:50', '2024-07-03 02:55:50'),
(110, 35, 130, '2024-07-03 02:55:56', '2024-07-03 02:55:56'),
(111, 35, 131, '2024-07-03 02:56:01', '2024-07-03 02:56:01'),
(112, 35, 132, '2024-07-03 02:56:06', '2024-07-03 02:56:06'),
(113, 36, 135, '2024-07-03 02:56:31', '2024-07-03 02:56:31'),
(114, 36, 134, '2024-07-03 02:56:36', '2024-07-03 02:56:36'),
(115, 36, 133, '2024-07-03 02:56:39', '2024-07-03 02:56:39'),
(116, 36, 136, '2024-07-03 02:56:44', '2024-07-03 02:56:44'),
(117, 37, 137, '2024-07-03 02:57:20', '2024-07-03 02:57:20'),
(118, 37, 139, '2024-07-03 02:57:43', '2024-07-03 02:57:43'),
(119, 37, 140, '2024-07-03 02:57:58', '2024-07-03 02:57:58'),
(120, 37, 138, '2024-07-03 02:58:20', '2024-07-03 02:58:20'),
(121, 38, 141, '2024-07-03 02:58:41', '2024-07-03 02:58:41'),
(122, 38, 142, '2024-07-03 02:58:46', '2024-07-03 02:58:46'),
(123, 38, 143, '2024-07-03 02:58:54', '2024-07-03 02:58:54'),
(124, 38, 144, '2024-07-03 02:58:59', '2024-07-03 02:58:59'),
(125, 39, 145, '2024-07-03 13:54:06', '2024-07-03 13:54:06'),
(126, 39, 146, '2024-07-03 13:54:18', '2024-07-03 13:54:18'),
(127, 39, 147, '2024-07-03 13:54:24', '2024-07-03 13:54:24'),
(128, 39, 148, '2024-07-03 13:54:27', '2024-07-03 13:54:27'),
(129, 37, 149, '2024-07-03 13:58:13', '2024-07-03 13:58:13'),
(130, 40, 149, '2024-07-03 13:58:20', '2024-07-03 13:58:20'),
(131, 40, 150, '2024-07-03 13:58:24', '2024-07-03 13:58:24'),
(132, 40, 151, '2024-07-03 13:58:28', '2024-07-03 13:58:28'),
(133, 40, 152, '2024-07-03 13:58:32', '2024-07-03 13:58:32'),
(134, 41, 153, '2024-07-03 13:59:03', '2024-07-03 13:59:03'),
(135, 41, 154, '2024-07-03 13:59:07', '2024-07-03 13:59:07'),
(136, 41, 156, '2024-07-03 13:59:13', '2024-07-03 13:59:13'),
(137, 41, 156, '2024-07-03 13:59:20', '2024-07-03 13:59:20'),
(138, 42, 157, '2024-07-03 13:59:30', '2024-07-03 13:59:30'),
(139, 42, 158, '2024-07-03 13:59:35', '2024-07-03 13:59:35'),
(140, 42, 159, '2024-07-03 13:59:39', '2024-07-03 13:59:39'),
(141, 42, 160, '2024-07-03 13:59:44', '2024-07-03 13:59:44'),
(142, 42, 165, '2024-07-03 13:59:50', '2024-07-03 13:59:50'),
(143, 43, 161, '2024-07-03 14:00:07', '2024-07-03 14:00:07'),
(144, 43, 162, '2024-07-03 14:00:11', '2024-07-03 14:00:11'),
(145, 43, 163, '2024-07-03 14:00:15', '2024-07-03 14:00:15'),
(146, 43, 164, '2024-07-03 14:00:20', '2024-07-03 14:00:20'),
(147, 44, 165, '2024-07-03 14:00:47', '2024-07-03 14:00:47'),
(148, 44, 166, '2024-07-03 14:00:52', '2024-07-03 14:00:52'),
(149, 44, 167, '2024-07-03 14:00:58', '2024-07-03 14:00:58'),
(150, 44, 168, '2024-07-03 14:01:02', '2024-07-03 14:01:02'),
(151, 45, 169, '2024-07-03 14:01:10', '2024-07-03 14:01:10'),
(152, 45, 170, '2024-07-03 14:01:15', '2024-07-03 14:01:15'),
(153, 45, 171, '2024-07-03 14:01:19', '2024-07-03 14:01:19'),
(154, 45, 172, '2024-07-03 14:01:24', '2024-07-03 14:01:24'),
(155, 46, 173, '2024-07-03 14:01:31', '2024-07-03 14:01:31'),
(156, 46, 175, '2024-07-03 14:01:34', '2024-07-03 14:01:34'),
(157, 46, 174, '2024-07-03 14:01:52', '2024-07-03 14:01:52'),
(158, 46, 176, '2024-07-03 14:02:03', '2024-07-03 14:02:03'),
(159, 47, 177, '2024-07-03 14:02:10', '2024-07-03 14:02:10'),
(160, 47, 178, '2024-07-03 14:02:16', '2024-07-03 14:02:16'),
(161, 47, 179, '2024-07-03 14:02:20', '2024-07-03 14:02:20'),
(162, 47, 180, '2024-07-03 14:02:38', '2024-07-03 14:02:38'),
(163, 47, 181, '2024-07-03 14:02:48', '2024-07-03 14:02:48'),
(164, 48, 181, '2024-07-03 14:02:52', '2024-07-03 14:02:52'),
(165, 48, 182, '2024-07-03 14:02:56', '2024-07-03 14:02:56'),
(166, 48, 183, '2024-07-03 14:02:59', '2024-07-03 14:02:59'),
(167, 48, 184, '2024-07-03 14:03:05', '2024-07-03 14:03:05'),
(168, 49, 185, '2024-07-03 14:03:11', '2024-07-03 14:03:11'),
(169, 49, 186, '2024-07-03 14:03:15', '2024-07-03 14:03:15'),
(170, 49, 187, '2024-07-03 14:03:18', '2024-07-03 14:03:18'),
(171, 49, 188, '2024-07-03 14:03:22', '2024-07-03 14:03:22'),
(172, 50, 189, '2024-07-03 14:03:36', '2024-07-03 14:03:36'),
(173, 50, 190, '2024-07-03 14:03:40', '2024-07-03 14:03:40'),
(174, 50, 191, '2024-07-03 14:03:44', '2024-07-03 14:03:44'),
(175, 50, 192, '2024-07-03 14:04:09', '2024-07-03 14:04:09'),
(176, 51, 193, '2024-07-03 14:04:18', '2024-07-03 14:04:18'),
(177, 51, 194, '2024-07-03 14:04:24', '2024-07-03 14:04:24'),
(178, 51, 195, '2024-07-03 14:04:28', '2024-07-03 14:04:28'),
(179, 51, 196, '2024-07-03 14:04:57', '2024-07-03 14:04:57'),
(180, 51, 197, '2024-07-03 14:05:11', '2024-07-03 14:05:11'),
(181, 52, 197, '2024-07-03 14:05:15', '2024-07-03 14:05:15'),
(182, 52, 198, '2024-07-03 14:05:31', '2024-07-03 14:05:31'),
(183, 52, 199, '2024-07-03 14:05:41', '2024-07-03 14:05:41'),
(184, 52, 200, '2024-07-03 14:05:45', '2024-07-03 14:05:45'),
(185, 53, 201, '2024-07-03 14:05:51', '2024-07-03 14:05:51'),
(186, 53, 202, '2024-07-03 14:05:58', '2024-07-03 14:05:58'),
(187, 53, 203, '2024-07-03 14:06:02', '2024-07-03 14:06:02'),
(188, 53, 204, '2024-07-03 14:06:05', '2024-07-03 14:06:05'),
(189, 54, 205, '2024-07-03 14:06:12', '2024-07-03 14:06:12'),
(190, 54, 206, '2024-07-03 14:06:17', '2024-07-03 14:06:17'),
(191, 54, 207, '2024-07-03 14:06:21', '2024-07-03 14:06:21'),
(192, 54, 208, '2024-07-03 14:06:24', '2024-07-03 14:06:24'),
(193, 55, 209, '2024-07-03 14:07:57', '2024-07-03 14:07:57'),
(194, 55, 210, '2024-07-03 14:08:03', '2024-07-03 14:08:03'),
(195, 55, 211, '2024-07-03 14:08:09', '2024-07-03 14:08:09'),
(196, 55, 212, '2024-07-03 14:08:14', '2024-07-03 14:08:14'),
(197, 55, 215, '2024-07-03 14:08:58', '2024-07-03 14:08:58'),
(198, 56, 213, '2024-07-03 14:09:04', '2024-07-03 14:09:04'),
(199, 56, 215, '2024-07-03 14:09:08', '2024-07-03 14:09:08'),
(200, 56, 216, '2024-07-03 14:09:15', '2024-07-03 14:09:15'),
(201, 57, 217, '2024-07-03 14:09:23', '2024-07-03 14:09:23'),
(202, 57, 219, '2024-07-03 14:09:26', '2024-07-03 14:09:26'),
(203, 57, 220, '2024-07-03 14:09:30', '2024-07-03 14:09:30'),
(204, 57, 218, '2024-07-03 14:09:55', '2024-07-03 14:09:55'),
(205, 58, 221, '2024-07-03 14:10:06', '2024-07-03 14:10:06'),
(206, 58, 222, '2024-07-03 14:10:11', '2024-07-03 14:10:11'),
(207, 58, 223, '2024-07-03 14:10:16', '2024-07-03 14:10:16'),
(208, 58, 224, '2024-07-03 14:10:24', '2024-07-03 14:10:24'),
(209, 58, 225, '2024-07-03 14:10:28', '2024-07-03 14:10:28'),
(210, 59, 225, '2024-07-03 14:10:36', '2024-07-03 14:10:36'),
(211, 59, 226, '2024-07-03 14:10:40', '2024-07-03 14:10:40'),
(212, 59, 227, '2024-07-03 14:10:44', '2024-07-03 14:10:44'),
(213, 59, 228, '2024-07-03 14:10:49', '2024-07-03 14:10:49'),
(214, 60, 229, '2024-07-03 14:11:03', '2024-07-03 14:11:03'),
(215, 60, 230, '2024-07-03 14:11:06', '2024-07-03 14:11:06'),
(216, 60, 231, '2024-07-03 14:11:11', '2024-07-03 14:11:11'),
(217, 60, 232, '2024-07-03 14:11:16', '2024-07-03 14:11:16'),
(218, 61, 233, '2024-07-03 14:11:23', '2024-07-03 14:11:23'),
(219, 61, 234, '2024-07-03 14:11:27', '2024-07-03 14:11:27'),
(220, 61, 235, '2024-07-03 14:11:31', '2024-07-03 14:11:31'),
(221, 61, 236, '2024-07-03 14:11:35', '2024-07-03 14:11:35'),
(222, 62, 237, '2024-07-03 14:11:46', '2024-07-03 14:11:46'),
(223, 63, 237, '2024-07-03 14:11:50', '2024-07-03 14:11:50'),
(224, 62, 238, '2024-07-03 14:11:55', '2024-07-03 14:11:55'),
(225, 62, 239, '2024-07-03 14:11:59', '2024-07-03 14:11:59'),
(226, 62, 240, '2024-07-03 14:12:03', '2024-07-03 14:12:03'),
(227, 63, 241, '2024-07-03 14:12:22', '2024-07-03 14:12:22'),
(228, 63, 242, '2024-07-03 14:12:25', '2024-07-03 14:12:25'),
(229, 63, 243, '2024-07-03 14:12:29', '2024-07-03 14:12:29'),
(230, 63, 244, '2024-07-03 14:12:33', '2024-07-03 14:12:33'),
(231, 63, 245, '2024-07-03 14:12:37', '2024-07-03 14:12:37'),
(232, 64, 245, '2024-07-03 14:12:41', '2024-07-03 14:12:41'),
(233, 64, 246, '2024-07-03 14:12:45', '2024-07-03 14:12:45'),
(234, 64, 247, '2024-07-03 14:12:49', '2024-07-03 14:12:49'),
(235, 64, 248, '2024-07-03 14:12:53', '2024-07-03 14:12:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grupo_2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grupo_3_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grupo_4_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grupo_1_palavras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grupo_2_palavras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grupo_3_palavras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grupo_4_palavras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `nome`, `grupo_1_id`, `grupo_2_id`, `grupo_3_id`, `grupo_4_id`, `grupo_1_palavras`, `grupo_2_palavras`, `grupo_3_palavras`, `grupo_4_palavras`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Jogo 1', 35, 10, 15, 28, 'Frequência,Tom,Volume,Timbre', 'Orégano,Coentro,Tomilho,Sálvia', 'Batom,Gloss,Tint,Bálsamo', 'Newton-John,Palito,Rodrigo,Benson', '2024-07-03', '2024-07-03 13:43:10', '2024-07-03 13:43:10'),
(4, 'Jogo 2', 39, 14, 49, 33, 'Espiãs,Marias,Patetas,Porquinhos', 'Bloco,Agenda,Planner,Diário', 'Gama,Beta,Alfa,Lambda', 'Irritação,Alergia,Coceira,Inflamação', '2024-07-03', '2024-07-03 14:15:29', '2024-07-03 14:15:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2024_05_17_154908_create_palavras_table', 1),
(30, '2024_05_17_154949_create_professores_table', 1),
(31, '2024_05_17_155002_create_disciplinas_table', 1),
(32, '2024_05_17_155017_create_grupos_table', 1),
(33, '2024_05_17_155052_create_grupos_palavras_table', 1),
(34, '2024_05_17_155053_create_grupos_disciplinas_table', 1),
(35, '2024_05_17_155355_create_jogos_table', 1),
(36, '2024_05_31_133519_create_grupos_jogos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavras`
--

CREATE TABLE `palavras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `palavras`
--

INSERT INTO `palavras` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(25, 'Luigi', NULL, '2024-05-29 18:08:25'),
(26, 'Docinho', NULL, NULL),
(27, 'Cebolinha', NULL, '2024-05-26 21:13:01'),
(28, 'Link', NULL, NULL),
(29, 'Orégano', NULL, NULL),
(30, 'Sálvia', NULL, NULL),
(31, 'Coentro', NULL, NULL),
(32, 'Tomilho', NULL, NULL),
(33, 'E-mail', NULL, NULL),
(34, 'Website', NULL, NULL),
(35, 'Download', NULL, NULL),
(36, 'Stream', NULL, NULL),
(37, 'Carta', NULL, NULL),
(38, 'Telegrama', NULL, NULL),
(39, 'Fax', NULL, NULL),
(40, 'Bip', NULL, NULL),
(41, 'Mensal', NULL, NULL),
(42, 'Anual', NULL, NULL),
(43, 'Semestral', NULL, NULL),
(44, 'Semanal', NULL, NULL),
(45, 'Diário', NULL, NULL),
(46, 'Agenda', NULL, NULL),
(47, 'Planner', NULL, NULL),
(48, 'Bloco', NULL, NULL),
(49, 'Batom', NULL, NULL),
(50, 'Gloss', NULL, NULL),
(51, 'Tint', NULL, NULL),
(52, 'Bálsamo', NULL, NULL),
(53, 'Baile', NULL, NULL),
(54, 'Máscara', NULL, NULL),
(55, 'Escola', NULL, NULL),
(56, 'Marchinha', NULL, NULL),
(57, 'Frevo', NULL, NULL),
(58, 'Axé', NULL, NULL),
(59, 'Bossa', NULL, NULL),
(60, 'Pagode', NULL, NULL),
(61, 'Imenso', NULL, NULL),
(62, 'Colossal', NULL, NULL),
(63, 'Titânico', NULL, NULL),
(64, 'Monumental', NULL, NULL),
(65, 'Frankenstein', NULL, NULL),
(66, 'Dom Quixote', NULL, NULL),
(67, 'Metropolis', NULL, NULL),
(68, 'Drácula', NULL, NULL),
(69, 'Moinho', NULL, NULL),
(70, 'Samba', NULL, NULL),
(71, 'Conversa', NULL, NULL),
(72, 'Gigante', NULL, NULL),
(73, 'Mangueira', NULL, NULL),
(74, 'Regador', NULL, NULL),
(75, 'Pá', NULL, NULL),
(76, 'Tesoura', NULL, NULL),
(77, 'Perspicaz', NULL, NULL),
(78, 'Esperta', NULL, NULL),
(79, 'Astuta', NULL, NULL),
(80, 'Hábil', NULL, NULL),
(81, 'Beija-flor', NULL, NULL),
(82, 'Canário', NULL, NULL),
(83, 'Sabiá', NULL, NULL),
(84, 'Rouxinol', NULL, NULL),
(85, 'Desfile', NULL, NULL),
(86, 'Book', NULL, NULL),
(87, 'Anúncio', NULL, NULL),
(88, 'Evento', NULL, NULL),
(89, 'Churrasco', NULL, NULL),
(90, 'Chimarrão', NULL, NULL),
(91, 'Bombacha', NULL, NULL),
(92, 'Carreteiro', NULL, NULL),
(93, 'Sorvete', NULL, NULL),
(94, 'Picolé', NULL, NULL),
(95, 'Shake', NULL, NULL),
(96, 'Açaí', NULL, NULL),
(97, 'Tiago', NULL, NULL),
(98, 'Simão', NULL, NULL),
(99, 'André', NULL, NULL),
(100, 'Pedro', NULL, NULL),
(101, 'Rodrigo', NULL, NULL),
(102, 'Palito', NULL, NULL),
(103, 'Benson', NULL, NULL),
(104, 'Newton-John', NULL, NULL),
(105, 'Bateria', NULL, NULL),
(106, 'Comissão', NULL, NULL),
(107, 'Evolução', NULL, NULL),
(108, 'Harmonia', NULL, NULL),
(109, 'Cuíca', NULL, NULL),
(110, 'Vombate', NULL, NULL),
(111, 'Coala', NULL, NULL),
(112, 'Diabo', NULL, NULL),
(113, 'Tambor', NULL, NULL),
(114, 'Flauta', NULL, NULL),
(115, 'Cravo', NULL, NULL),
(116, 'Triângulo', NULL, NULL),
(117, 'Canela', NULL, NULL),
(118, 'Cúrcuma', NULL, NULL),
(119, 'Zimbro', NULL, NULL),
(120, 'Cardamomo', NULL, NULL),
(121, 'Alergia', NULL, NULL),
(122, 'Irritação', NULL, NULL),
(123, 'Inflamação', NULL, NULL),
(124, 'Coceira', NULL, NULL),
(125, 'Pele', NULL, NULL),
(126, 'Fígado', NULL, NULL),
(127, 'Coração', NULL, NULL),
(128, 'Estômago', NULL, NULL),
(129, 'Frequência', NULL, NULL),
(130, 'Timbre', NULL, NULL),
(131, 'Tom', NULL, NULL),
(132, 'Volume', NULL, NULL),
(133, 'Comichão', NULL, NULL),
(134, 'Mickey', NULL, NULL),
(135, 'Cérebro', NULL, NULL),
(136, 'Jerry', NULL, NULL),
(137, 'Mangás', NULL, NULL),
(138, 'Gibis', NULL, NULL),
(139, 'Almanaques', NULL, NULL),
(140, 'Revistinhas', NULL, NULL),
(141, 'Cirurgias', NULL, NULL),
(142, 'Exames', NULL, NULL),
(143, 'Hemodiálises', NULL, NULL),
(144, 'Transplantes', NULL, NULL),
(145, 'Espiãs', NULL, NULL),
(146, 'Patetas', NULL, NULL),
(147, 'Porquinhos', NULL, NULL),
(148, 'Marias', NULL, NULL),
(149, 'Revistas', NULL, NULL),
(150, 'Fiscalizações', NULL, NULL),
(151, 'Abordagens', NULL, NULL),
(152, 'Operações', NULL, NULL),
(153, 'Terra', NULL, NULL),
(154, 'Marte', NULL, NULL),
(155, 'Vênus', NULL, NULL),
(156, 'Saturno', NULL, NULL),
(157, 'Afrodite', NULL, NULL),
(158, 'Zeus', NULL, NULL),
(159, 'Atenas', NULL, NULL),
(160, 'Hades', NULL, NULL),
(161, 'Nanica', NULL, NULL),
(162, 'Maçã', NULL, NULL),
(163, 'Plantain', NULL, NULL),
(164, 'Prata', NULL, NULL),
(165, 'Hércules', NULL, NULL),
(166, 'Dálmatas', NULL, NULL),
(167, 'Corcunda', NULL, NULL),
(168, 'Pinóquio', NULL, NULL),
(169, 'Feira', NULL, NULL),
(170, 'Mostra', NULL, NULL),
(171, 'Apresentação', NULL, NULL),
(172, 'Exibição', NULL, NULL),
(173, 'Vida', NULL, NULL),
(174, 'Liberdade', NULL, NULL),
(175, 'Igualdade', NULL, NULL),
(176, 'Segurança', NULL, NULL),
(177, 'Eucaliptos', NULL, NULL),
(178, 'Carvalhos', NULL, NULL),
(179, 'Jatobás', NULL, NULL),
(180, 'Ipês', NULL, NULL),
(181, 'Pinheiros', NULL, NULL),
(182, 'Mooca', NULL, NULL),
(183, 'Ipiranga', NULL, NULL),
(184, 'Jardins', NULL, NULL),
(185, 'Alfa', NULL, NULL),
(186, 'Beta', NULL, NULL),
(187, 'Gama', NULL, NULL),
(188, 'Lambda', NULL, NULL),
(189, 'Zebra', NULL, NULL),
(190, 'Palhaço', NULL, NULL),
(191, 'Cascudo', NULL, NULL),
(192, 'Anjo', NULL, NULL),
(193, 'Pia', NULL, NULL),
(194, 'Late', NULL, NULL),
(195, 'Muge', NULL, NULL),
(196, 'Uiva', NULL, NULL),
(197, 'Mia', NULL, NULL),
(198, 'Jules', NULL, NULL),
(199, 'Vincent', NULL, NULL),
(200, 'Zed', NULL, NULL),
(201, 'Mandioca', NULL, NULL),
(202, 'Cará', NULL, NULL),
(203, 'Batata', NULL, NULL),
(204, 'Inhame', NULL, NULL),
(205, 'Túnica', NULL, NULL),
(206, 'Manto', NULL, NULL),
(207, 'Coroa', NULL, NULL),
(208, 'Cetro', NULL, NULL),
(209, 'Secretário', NULL, NULL),
(210, 'Assistente', NULL, NULL),
(211, 'Assessor', NULL, NULL),
(212, 'Colaborador', NULL, NULL),
(213, 'Scooby', NULL, NULL),
(214, 'Coragem', NULL, NULL),
(215, 'Ajudante', NULL, NULL),
(216, 'Brian', NULL, NULL),
(217, 'Buraco', NULL, NULL),
(218, 'Paciência', NULL, NULL),
(219, 'Truco', NULL, NULL),
(220, 'Poker', NULL, NULL),
(221, 'Nestlé', NULL, NULL),
(222, 'Pifpaf', NULL, NULL),
(223, 'Seara', NULL, NULL),
(224, 'Perdigão', NULL, NULL),
(225, 'Sadia', NULL, NULL),
(226, 'Sã', NULL, NULL),
(227, 'Forte', NULL, NULL),
(228, 'Saudável', NULL, NULL),
(229, 'Pacatez', NULL, NULL),
(230, 'Tranquilidade', NULL, NULL),
(231, 'Serenidade', NULL, NULL),
(232, 'Mansidão', NULL, NULL),
(233, 'Vento', NULL, NULL),
(234, 'Sol', NULL, NULL),
(235, 'Carvão', NULL, NULL),
(236, 'Água', NULL, NULL),
(237, 'Ré', NULL, NULL),
(238, 'Juíza', NULL, NULL),
(239, 'Testemunha', NULL, NULL),
(240, 'Autora', NULL, NULL),
(241, 'Dó', NULL, NULL),
(242, 'Mi', NULL, NULL),
(243, 'Si', NULL, NULL),
(244, 'Fá', NULL, NULL),
(245, 'Lá', NULL, NULL),
(246, 'Ali', NULL, NULL),
(247, 'Aqui', NULL, NULL),
(248, 'Acolá', NULL, NULL),
(249, 'lona', NULL, NULL),
(250, 'picadeiro', NULL, NULL),
(251, 'equilibrista', NULL, NULL),
(252, 'mágico', NULL, NULL),
(253, 'retângulo', NULL, NULL),
(254, 'quadrado', NULL, NULL),
(255, 'trapézio', NULL, NULL),
(256, 'paralelogramo', NULL, NULL),
(257, 'rolo', NULL, NULL),
(258, 'tira', NULL, NULL),
(259, 'pururuca', NULL, NULL),
(260, 'barriga', NULL, NULL),
(262, 'losango', NULL, NULL),
(263, 'trevo', NULL, NULL),
(264, 'ponta de lança', NULL, NULL),
(265, 'azeite', NULL, NULL),
(266, 'lubrifique', NULL, NULL),
(267, 'besunte', NULL, NULL),
(268, 'engraxe', NULL, NULL),
(269, 'borracha', NULL, NULL),
(270, 'grafite', NULL, NULL),
(271, 'caderno', NULL, NULL),
(272, 'marca-texto', NULL, NULL),
(273, 'óleo', NULL, NULL),
(274, 'acrílica', NULL, NULL),
(275, 'guache', NULL, NULL),
(276, 'epóxi', NULL, NULL),
(277, 'ácido', NULL, NULL),
(278, 'sal', NULL, NULL),
(279, 'óxido', NULL, NULL),
(280, 'base', NULL, NULL),
(281, 'laranja', NULL, NULL),
(282, 'rosa', NULL, NULL),
(283, 'amarelo', NULL, NULL),
(284, 'violeta', NULL, NULL),
(285, 'vermelho', NULL, NULL),
(286, 'azul', NULL, NULL),
(287, 'verde', NULL, NULL),
(288, 'preto', NULL, NULL),
(289, 'branco', NULL, NULL),
(300, 'banana', NULL, NULL),
(301, 'maracujá', NULL, NULL),
(302, 'morango', NULL, NULL),
(303, 'pêssego', NULL, NULL),
(304, 'manga', NULL, NULL),
(305, 'zíper', NULL, NULL),
(306, 'gola', NULL, NULL),
(307, 'capuz', NULL, NULL),
(309, 'balsâmico', NULL, NULL),
(310, 'arroz', NULL, NULL),
(311, 'malte', NULL, NULL),
(312, 'leite', NULL, NULL),
(313, 'queijo', NULL, NULL),
(314, 'ovo', NULL, NULL),
(315, 'carne', NULL, NULL),
(316, 'cotonete', NULL, NULL),
(317, 'fio dental', NULL, NULL),
(318, 'condicionador', NULL, NULL),
(319, 'shampoo', NULL, NULL),
(321, 'café', NULL, NULL),
(322, 'chá', NULL, NULL),
(324, 'capuccino', NULL, NULL),
(325, 'sabão', NULL, NULL),
(326, 'chocolate', NULL, NULL),
(327, 'proteína', NULL, NULL),
(328, 'cereal', NULL, NULL),
(329, 'meia', NULL, NULL),
(330, 'cabra', NULL, NULL),
(331, 'moleque', NULL, NULL),
(332, 'chinelo', NULL, NULL),
(341, 'tomada', NULL, NULL),
(342, 'conquista', NULL, NULL),
(343, 'ocupação', NULL, NULL),
(344, 'domínio', NULL, NULL),
(349, 'passagem', NULL, NULL),
(350, 'hospedagem', NULL, NULL),
(351, 'alimentação', NULL, NULL),
(352, 'passeios', NULL, NULL),
(353, 'plugue', NULL, NULL),
(354, 'fio', NULL, NULL),
(355, 'soquete', NULL, NULL),
(356, 'fusível', NULL, NULL),
(357, 'bolacha', NULL, NULL),
(358, 'bofetada', NULL, NULL),
(359, 'tapa', NULL, NULL),
(360, 'safanão', NULL, NULL),
(361, 'gramado', NULL, NULL),
(362, 'arquibancada', NULL, NULL),
(363, 'bilheteria', NULL, NULL),
(364, 'vestiário', NULL, NULL),
(365, 'biscoito', NULL, NULL),
(366, 'pipoca', NULL, NULL),
(368, 'jujuba', NULL, NULL),
(369, 'petisco', NULL, NULL),
(370, 'brinquedo', NULL, NULL),
(371, 'coleira', NULL, NULL),
(372, 'vasilha', NULL, NULL),
(373, 'pista', NULL, NULL),
(374, 'grid', NULL, NULL),
(375, 'piloto', NULL, NULL),
(376, 'equipe', NULL, NULL),
(377, 'sinal', NULL, NULL),
(378, 'chapuzinho', NULL, NULL),
(379, 'tapete', NULL, NULL),
(380, 'alerta', NULL, NULL),
(381, 'caribe', NULL, NULL),
(382, 'crocante', NULL, NULL),
(383, 'talento', NULL, NULL),
(384, 'capri', NULL, NULL),
(385, 'ibiza', NULL, NULL),
(386, 'maui', NULL, NULL),
(387, 'noronha', NULL, NULL),
(389, 'Adorno', NULL, NULL),
(390, 'Ornato', NULL, NULL),
(391, 'Adereço', NULL, NULL),
(392, 'Bibelô', NULL, NULL),
(393, 'Animal', NULL, NULL),
(394, 'Vegetal', NULL, NULL),
(395, 'Monera', NULL, NULL),
(396, 'Protista', NULL, NULL),
(397, 'Liame', NULL, NULL),
(398, 'Elo', NULL, NULL),
(399, 'Conexão', NULL, NULL),
(400, 'Relação', NULL, NULL),
(401, 'Terreno', NULL, NULL),
(402, 'Criatura', NULL, NULL),
(403, 'Feitiço', NULL, NULL),
(404, 'Artefato', NULL, NULL),
(405, 'Max Weber', '2024-05-24 17:20:23', '2024-05-24 17:20:23'),
(406, 'Émile Durkheim', '2024-05-24 17:21:35', '2024-05-24 17:21:35'),
(407, 'Sérgio Buarque de Holanda', '2024-05-24 17:22:20', '2024-05-24 17:22:20'),
(408, 'Manteiga', '2024-05-28 17:23:32', '2024-05-28 17:23:32'),
(410, 'Coco', '2024-05-28 17:26:05', '2024-05-28 17:26:05'),
(411, 'Açúcar', '2024-05-28 17:26:18', '2024-05-28 17:26:18'),
(412, 'Cabeça', '2024-05-28 17:32:19', '2024-05-28 17:32:19'),
(413, 'Chefe', '2024-05-28 17:32:26', '2024-05-28 17:32:26'),
(414, 'Capitão', '2024-05-28 17:32:33', '2024-05-28 17:32:33'),
(415, 'Manda-chuva', '2024-05-28 17:32:44', '2024-05-28 17:32:44'),
(416, 'Arara', '2024-05-28 17:34:22', '2024-05-28 17:34:22'),
(417, 'Pelicano', '2024-05-28 17:34:28', '2024-05-28 17:34:28'),
(418, 'Andorinha', '2024-05-28 17:34:37', '2024-05-28 17:34:37'),
(419, 'Corvo', '2024-05-28 17:34:43', '2024-05-28 17:34:43'),
(420, 'Rei', '2024-05-28 17:35:41', '2024-05-28 17:35:41'),
(422, 'Magalhães', '2024-05-28 17:38:41', '2024-05-28 17:38:41'),
(423, 'Imperador', '2024-05-28 17:39:14', '2024-05-28 17:39:14'),
(424, 'VSCode', '2024-05-29 18:19:38', '2024-05-29 18:19:38'),
(425, 'Dom Casmurro', '2024-07-03 02:17:51', '2024-07-03 02:17:51'),
(426, 'Quincas Borba', '2024-07-03 02:17:59', '2024-07-03 02:17:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `login`, `senha`, `created_at`, `updated_at`) VALUES
(1, 'Professor 1', 'Professor 1', '$2y$12$qXWr6abe7llLvNPTJULJgeznVbOoqKzpjiVBWYSArTb4J4Rti6mH2', NULL, NULL),
(2, 'Professor 2', 'Professor 2', '$2y$12$ATPZ8.16MlB6XDFxUIjWCec8ef74riCOHZIuHusHpfSL/XQPm4qnC', NULL, NULL),
(3, 'Profeesor 3', 'Profeesor 3', '$2y$12$rnak3.HSi.0bvzA2ZnRuge8UV6aEy0SBYWMaKahLS9NAkuy7vdEDe', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `disciplinas_nome_unique` (`nome`),
  ADD KEY `disciplinas_professor_id_foreign` (`professor_id`);

--
-- Índices para tabela `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grupos_nome_unique` (`nome`);

--
-- Índices para tabela `grupos_disciplinas`
--
ALTER TABLE `grupos_disciplinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupos_disciplinas_grupo_id_foreign` (`grupo_id`),
  ADD KEY `grupos_disciplinas_disciplina_id_foreign` (`disciplina_id`);

--
-- Índices para tabela `grupos_jogos`
--
ALTER TABLE `grupos_jogos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupos_jogos_grupo_id_foreign` (`grupo_id`),
  ADD KEY `grupos_jogos_jogo_id_foreign` (`jogo_id`),
  ADD KEY `grupos_jogos_palavra_id_foreign` (`palavra_id`);

--
-- Índices para tabela `grupos_palavras`
--
ALTER TABLE `grupos_palavras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupos_palavras_grupo_id_foreign` (`grupo_id`),
  ADD KEY `grupos_palavras_palavra_id_foreign` (`palavra_id`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jogos_nome_unique` (`nome`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `palavras`
--
ALTER TABLE `palavras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professores_nome_unique` (`nome`),
  ADD UNIQUE KEY `professores_login_unique` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `grupos_disciplinas`
--
ALTER TABLE `grupos_disciplinas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `grupos_jogos`
--
ALTER TABLE `grupos_jogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `grupos_palavras`
--
ALTER TABLE `grupos_palavras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `palavras`
--
ALTER TABLE `palavras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_professor_id_foreign` FOREIGN KEY (`professor_id`) REFERENCES `professores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `grupos_disciplinas`
--
ALTER TABLE `grupos_disciplinas`
  ADD CONSTRAINT `grupos_disciplinas_disciplina_id_foreign` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplinas` (`id`),
  ADD CONSTRAINT `grupos_disciplinas_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`);

--
-- Limitadores para a tabela `grupos_jogos`
--
ALTER TABLE `grupos_jogos`
  ADD CONSTRAINT `grupos_jogos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `grupos_jogos_jogo_id_foreign` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id`),
  ADD CONSTRAINT `grupos_jogos_palavra_id_foreign` FOREIGN KEY (`palavra_id`) REFERENCES `palavras` (`id`);

--
-- Limitadores para a tabela `grupos_palavras`
--
ALTER TABLE `grupos_palavras`
  ADD CONSTRAINT `grupos_palavras_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  ADD CONSTRAINT `grupos_palavras_palavra_id_foreign` FOREIGN KEY (`palavra_id`) REFERENCES `palavras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
