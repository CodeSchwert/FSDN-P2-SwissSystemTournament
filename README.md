# Swiss System Tournament Picker

Udacity Full Stack Nano Degree project 2: A Swiss System Tournament Match Picker; This little Python module keeps track of tournament match details, and picks tournament matches according to the Swiss-system.

# Prerequisites

The module runs best on the Udacity supplied Vagrant VM.

# Application Files

The project consists of the following files:

* tournament.py
  * Python Module code file; Implements the module functions.
* tournament.sql
  * PostgreSQL file which contains SQL to setup the database.
* tournament_test.py
  * Python module test file. Supplied by Udacity.

# Database Init

The PostgreSQL database and tables need to be setup before the application be can be used. To setup the PostgreSQL database using the `tournament.sql`, at the Vagrant VM shell (in the tournament folder, or folder containing the tournament.sql file) run the following:

	$ psql
	=> \i tournament.sql
	=> \q

# Testing

To test the `tournament.py` module run the `tournament_test.py` script from the Vagrant VM shell.

	$ python tournament_test.py
