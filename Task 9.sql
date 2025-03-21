SELECT ad,soyad,unvan_calisan FROM calisan
JOIN Unvan ON calisan_id = unvan_calisan_id
WHERE unvan_calisan = 'Yönetici' OR  unvan_calisan = 'Müdür' 