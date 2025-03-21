CREATE TABLE Birim (
    birim_id INT PRIMARY KEY,
    birim_ad VARCHAR(50) NOT NULL
);

CREATE TABLE Calisan (
    calisan_id INT PRIMARY KEY NOT NULL,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    maas DECIMAL(10,2) NOT NULL,
    katilmaTarihi DATE NOT NULL,
    calisan_birim_id INT,
    FOREIGN KEY (calisan_birim_id) REFERENCES Birim(birim_id) ON DELETE SET NULL
);

CREATE TABLE Ikramiye (
    ikramiye_id INT PRIMARY KEY,
    ikramiye_calisan_id INT,
    ikramiye_ucret DECIMAL(10,2) NOT NULL,
    ikramiye_tarih DATE NOT NULL,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES Calisan(calisan_id) ON DELETE CASCADE
);

CREATE TABLE Unvan (
    unvan_id INT PRIMARY KEY,
    unvan_calisan_id INT,
    unvan_calisan VARCHAR(50) NOT NULL,
    unvan_tarih DATE NOT NULL,
    FOREIGN KEY (unvan_calisan_id) REFERENCES Calisan(calisan_id) ON DELETE CASCADE
);
