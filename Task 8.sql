SELECT calisan.ad, calisan.soyad, birim.birim_ad, unvan.unvan_calisan, ikramiye.ikramiye_ucret
FROM calisan
JOIN birim ON calisan.calisan_birim_id = birim.birim_id
JOIN ikramiye  ON calisan.calisan_id = ikramiye.ikramiye_calisan_id
JOIN unvan  ON calisan.calisan_id = unvan.unvan_calisan_id;
