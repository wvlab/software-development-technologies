USE MusicShop;

ALTER TABLE Instrument ADD discount_price AS (price * 0.9);
