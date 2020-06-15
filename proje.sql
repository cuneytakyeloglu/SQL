/* KATILANLARIN TUTULDUĞU BİR VERİTABANI */

CREATE DATABASE kutuphane; /* Veritabanımızı oluşturduk.*/
USE kutuphane; /* Veritabanımızı oluşturduk ve aktif hale getirdik.*/

/* Tablomuzu oluşturuyoruz ve kolonların içine tablo isimlerimizi giriyoruz.*/
CREATE TABLE kutuphane_tablosu
(
 kitap_id INT NOT NULL,
 kitap_ad VARCHAR (30),
 kitap_yil DATETIME,
 kitap_sayfa INT NOT NULL,
 kitap_turu VARCHAR (20),
 kitap_yazar VARCHAR (30),
 kitap_yeri VARCHAR (20),
 kitap_fiyat INT NOT NULL,
 PRIMARY KEY (kitap_id) /* Birincil anahtarımızı yani primary key'imizi tanımlıyoruz. */
);

/* Foreign keyi kullanmak için yaptım  */
CREATE TABLE rezerve
(  
    kitap_ozel INT PRIMARY KEY NOT NULL, 
    kitap_id INT,
    CONSTRAINT ozel FOREIGN KEY (kitap_ozel) REFERENCES kutuphane_tablosu(kitap_id)/* FOREIGN KEY'imizi kullanarak ctf_table Tablomuzdan İD değerimizi seçtik.*/
);

/* Tablomuzun içine belirlediğimiz değerleri giriyoruz.*/
INSERT INTO kutuphane_tablosu (kitap_id , kitap_ad , kitap_yil, kitap_sayfa, kitap_turu, kitap_yazar, kitap_yeri, kitap_fiyat)
VALUES
(1, 'NUTUK', 1990, 'Söylev', 'Mustafa Kemal Atatürk', 'Ankara', 20),
(2, 'Kara Kitap', 1990, 476, 'Roman', 'Orhan Pamuk', 'İzmir', 30),
(3, 'Tutunamayanlar', 1972, 'Roman', 'Oğuz Atay', 'Bursa', 35),
(4, 'Ruh Adam', 1972, 'Roman', 'Nihal Atsız', 'Konya', 30),
(5, '835 Satır', 1929, 'Şiir', 'Nazım Hikmet', 'Nevşehir', 30),
(6, 'Kafatası', 1932, 'Tiyatro', 'Nazım Hikmet', 'Kırşehir', 30),
(7, 'Korkuyu Beklerken', 1975, 'Öykü', 'Oğuz Atay', 'Balıkesir', 35),

/* Listeleme */
SELECT *  FROM ctf_table WHERE ctfyas = 22/* "WHERE" ile yaşı sadece 22 olanları listeliyoruz.*/
SELECT *  FROM ctf_table WHERE ctfkad = 'Ahmet' OR ctf_table = 'Mehmet'/* "OR" ile adı sadece Ahmet ve Mehmet olan herkesi listeliyoruz.*/ 
SELECT ctfid  FROM ctf_table WHERE ctfkad = 'Muhiddin' AND ctfyas = 19/* "AND" ile ismi muhiddin ve yaşı 19 olan katılımcıların İD değerlerini getirir.*/


SELECT * FROM ctfliste WHERE birincId = 5/* "WHERE" ile ID değeri sadece 5 olanı çekiyoruz.*/
