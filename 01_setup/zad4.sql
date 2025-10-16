INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa, ul. Polna 1', '501001001'),
('Anna', 'Kowalska', 'Kraków, ul. Lipowa 3', '501002002'),
('Jakub', 'Wiśniewski', 'Poznań, ul. Różana 5', '501003003'),
('Joanna', 'Lewandowska', 'Gdańsk, ul. Słoneczna 7', '501004004'),
('Krzysztof', 'Wójcik', 'Łódź, ul. Długa 9', '501005005'),
('Julia', 'Kamińska', 'Lublin, ul. Parkowa 2', '501006006'),
('Michał', 'Zieliński', 'Katowice, ul. Mickiewicza 8', '501007007'),
('Karolina', 'Kaczmarek', 'Szczecin, ul. Leśna 4', '501008008'),
('Jacek', 'Mazur', 'Warszawa, ul. Krótka 6', '501009009'),
('Natalia', 'Pawlak', 'Wrocław, ul. Jesionowa 10', '501010010');

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 5000),
('Specjalista', 3200),
('Asystent', 2200),
('Księgowy', 4000),
('Magazynier', 2500),
('Sprzedawca', 2800),
('Recepcjonista', 2100),
('Analityk', 3500),
('Technik', 2600),
('Praktykant', 1200);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Brak', 0),
('Motywacyjna', 500),
('Roczna', 1000),
('Za nadgodziny', 700),
('Brak', 0),
('Specjalna', 800),
('Brak', 0),
('Motywacyjna', 600),
('Brak', 0),
('Roczna', 1200);

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 170, 1),
('2025-10-01', 160, 2),
('2025-10-01', 180, 3),
('2025-10-01', 150, 4),
('2025-10-01', 165, 5),
('2025-10-01', 155, 6),
('2025-10-01', 175, 7),
('2025-10-01', 160, 8),
('2025-10-01', 190, 9),
('2025-10-01', 140, 10);

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-01', 1, 1, 1, 2),
('2025-10-01', 2, 2, 2, 1),
('2025-10-01', 3, 3, 4, 3),
('2025-10-01', 4, 4, 3, 1),
('2025-10-01', 5, 5, 5, 4),
('2025-10-01', 6, 6, 6, 5),
('2025-10-01', 7, 7, 8, 6),
('2025-10-01', 8, 8, 7, 7),
('2025-10-01', 9, 9, 9, 1),
('2025-10-01', 10, 10, 10, 1);
