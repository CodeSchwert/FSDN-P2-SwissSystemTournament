-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Clear the database first ...
DROP DATABASE IF EXISTS tournament;

-- Create the database
CREATE DATABASE tournament;

-- Connect to the tournament DB
\c tournament

-- Player table
CREATE TABLE players (
	id serial primary key,
	name text
);

-- Standings table
CREATE TABLE standings (
	id serial references players(id) ON DELETE CASCADE,
	matches int,
	wins int
);

-- Current Standings view
CREATE VIEW currentStandings AS
	SELECT players.id, players.name, standings.wins, standings.matches
	FROM players LEFT JOIN standings
		ON players.id = standings.id
	ORDER BY standings.wins DESC;

