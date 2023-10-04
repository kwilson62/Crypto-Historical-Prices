-- Active: 1696137771867@@127.0.0.1@5432@crypto

-- Create the table for bitcoin - the table schema is the same

-- for each coin, but has different values for the columns

CREATE TABLE
    bitcoin (
        Unix_Timestamp INT,
        Entry_Date TIMESTAMP
        WITH
            TIME ZONE,
            Symbol VARCHAR(10),
            Open_Price DECIMAL,
            High_Price DECIMAL,
            Low_Price DECIMAL,
            Close_Price DECIMAL,
            Coin_Volume DECIMAL,
            PRIMARY KEY (Unix_Timestamp, Symbol)
    );

-- Create the table for kraken_bitcoin  - the table schema is the same

-- for each coin, but has different values for the columns

CREATE TABLE
    kraken_bitcoin (
        Unix_Timestamp INT,
        Entry_Date TIMESTAMP
        WITH
            TIME ZONE,
            Symbol VARCHAR(10),
            Open_Price DECIMAL,
            High_Price DECIMAL,
            Low_Price DECIMAL,
            Close_Price DECIMAL,
            Coin_Volume DECIMAL,
            Trades INT,
            PRIMARY KEY (Unix_Timestamp, Symbol)
    );

-- Create the table for kraken_trades  - the table schema is the same

-- for each coin, but has different values for the columns

CREATE TABLE
    kraken_trades (
        Unix_Timestamp INT,
        Entry_Date TIMESTAMP
        WITH
            TIME ZONE,
            Symbol VARCHAR(10),
            Price DECIMAL,
            Volume DECIMAL,
            PRIMARY KEY (
                Unix_Timestamp,
                Symbol,
                Price,
                Volume
            )
    );