SELECT ad, soyad, maas FROM Calisan WHERE maas >= ALL(SELECT maas FROM Calisan)