/* Kütüphane Veritabanı */
CREATE DATABASE kutuphane; 
USE kutuphane; 


CREATE TABLE kutuphane_tablosu
(
 kitap_id INT NOT NULL,
 kitap_ad VARCHAR (30),
 kitap_yil DATETIME,
 kitap_sayfa INT NOT NULL,
 kitap_turu VARCHAR (20),
 kitap_yazar VARCHAR (30),
 kitap_yeri VARCHAR (20),
 kitap_fiyat MONEY,
 PRIMARY KEY (kitap_id)
);
/* Foreign key içeren tablo */
CREATE TABLE rezerve
(  
    kitap_ozel INT PRIMARY KEY NOT NULL, 
    kitap_id INT,
    CONSTRAINT ozel FOREIGN KEY (kitap_ozel) REFERENCES kutuphane_tablosu(kitap_id)
);

INSERT INTO kutuphane_tablosu (kitap_id , kitap_ad , kitap_yil, kitap_sayfa, kitap_turu, kitap_yazar, kitap_yeri, kitap_fiyat)
VALUES
(1, 'NUTUK', 1990, 'Söylev', 'Mustafa Kemal Atatürk', 'Ankara', 20),
(2, 'Kara Kitap', 1990, 476, 'Roman', 'Orhan Pamuk', 'İzmir', 30),
(3, 'Tutunamayanlar', 1972, 'Roman', 'Oğuz Atay', 'Bursa', 35),
(4, 'Ruh Adam', 1972, 'Roman', 'Nihal Atsız', 'Konya', 30),
(5, '835 Satır', 1929, 'Şiir', 'Nazım Hikmet', 'Nevşehir', 30),
(6, 'Kafatası', 1932, 'Tiyatro', 'Nazım Hikmet', 'Kırşehir', 30),
(7, 'Korkuyu Beklerken', 1975, 'Öykü', 'Oğuz Atay', 'Balıkesir', 35);

/* Listeleme 
SELECT *  FROM kutuphane_tablosu WHERE kitap_yeri = 'Ankara'  (Ankara' da  olan kitapları listeleme)
SELECT kitap_ad  FROM kutuphane_tablosu WHERE kitap_yeri = 'Konya' AND kitap_turu = 'Roman'  (Konya'da bulunan roman kitaplarının adını listeleme)
SELECT * FROM kutuphane_tablosu ORDER BY kitap_fiyat ASC (En ucuz kitaptan en pahalıya listeleme)
SELECT * FROM kutuphane_tablosu WHERE kitap_yil BETWEEN 1930 AND 1940 (1930 ile 1940 arasında yazılan kitapları listeleme) */