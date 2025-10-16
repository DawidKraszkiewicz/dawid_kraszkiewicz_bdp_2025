DELETE FROM ksiegowosc.wynagrodzenie
WHERE id_pracownika IN (
    SELECT w.id_pracownika
    FROM ksiegowosc.wynagrodzenie w
    JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
    WHERE s.kwota < 1200
);
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika NOT IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie);
