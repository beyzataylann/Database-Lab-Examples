SELECT c.ad, c.soyad, c.maas, c.calisan_birim_id
FROM calisan c
WHERE c.maas = (
    SELECT MAX(c2.maas) 
    FROM calisan c2 
    WHERE c2.calisan_birim_id = c.calisan_birim_id
);
