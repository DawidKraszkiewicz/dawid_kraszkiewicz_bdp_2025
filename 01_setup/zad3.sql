
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(30) NOT NULL,
    nazwisko VARCHAR(40) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
) COMMENT = 'tabela z informacjami o pracownikach';

CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin NUMERIC(5,2) NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika)
) COMMENT = 'tabela z godzinami przepracowanymi przez pracownikow';


CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) NOT NULL
) COMMENT = 'tabela z informacjami o pensjach' ;


CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota NUMERIC(10,2)
) COMMENT = 'tabela z informacjami o premiach';


CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premia(id_premii)
) COMMENT = 'tabela z informacjami o pensjach';
