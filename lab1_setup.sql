
-- Lab 1 – Création et peuplement d'une base


-- Étape 4 : Création de la base testdb
CREATE DATABASE testdb
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

    -- Sélection de la base
        USE testdb;

-- Étape 5 : Création de la table utilisateur
CREATE TABLE utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

    -- Insertion des données
        INSERT INTO utilisateur (nom, email) VALUES
        ('Alice Dupont', 'alice@example.com'),
        ('Bob', 'bob@example.com'),
        ('Charlie', 'charlie@example.com'),
        ('Diana', 'diana@example.com');

-- Étape 6 : Interrogation des données
    -- Lister tous les utilisateurs
        SELECT * FROM utilisateur;

-- Rechercher les emails se terminant par @example.com
SELECT nom, email
FROM utilisateur
WHERE email LIKE '%@example.com';

-- Compter le nombre d'enregistrements
SELECT COUNT(*) AS total
FROM utilisateur;

-- Étape 9 : Nettoyage (facultatif)
        DROP TABLE utilisateur;
        DROP DATABASE testdb;

-- Quitter MySQL
        EXIT;
