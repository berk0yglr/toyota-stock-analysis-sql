# 🚗 Toyota Stock Market Analysis (1980-2026) using SQL

Bu proje, Toyota'nın 1980'den 2026'ya kadar olan tarihsel borsa verilerini (OHLCV) inceleyerek piyasa trendlerini, işlem hacmi patlamalarını ve fiyat dalgalanmalarını ortaya koyan kapsamlı bir finansal veri analizi çalışmasıdır.

## 📊 Proje Hakkında
Veri analizi süreçlerinde SQL'in analitik gücünü göstermek amacıyla hazırlanmıştır. Veri seti üzerinde temel sorgulama işlemlerinin yanı sıra **Window Functions** ve **CTE (Common Table Expressions)** gibi ileri seviye SQL teknikleri kullanılarak derinlemesine içgörüler (insights) elde edilmiştir.

## 💡 Öne Çıkan İçgörüler 
* 2010 Hacim Patlaması: Tüm zamanların en yüksek işlem hacmine sahip ilk 10 gününün 8'i Şubat 2010'a aittir. Özellikle 3 Şubat 2010'da 18.5 milyonluk rekor bir işlem adedi görülmüştür. Bu durum pazardaki büyük bir dalgalanmaya işaret etmektedir.
* **2024 Altın Çağı:** Ortalama fiyatlar baz alındığında, hisse senedinin tarihi zirvesini 2024 yılında (ortalama 1.7 milyon seviyelerinde) yaptığı tespit edilmiştir.
* **Aylık ve Günlük Trendler:** Geliştirilen analitik sorgularla aydan aya büyüme (MoM) oranları ve 30 günlük hareketli ortalamalar (Moving Average) hesaplanarak fiyatların yönü izlenmiştir.

## 🛠️ Kullanılan SQL Yetenekleri
Bu projede veri manipülasyonu ve ileri seviye analiz için aşağıdaki SQL konseptleri aktif olarak kullanılmıştır:
* **Veri Filtreleme ve Gruplama:** `WHERE`, `GROUP BY`, `ORDER BY`
* **Matematiksel Fonksiyonlar:** `SUM`, `AVG`
* **Veri Temizleme ve Formatlama:** `CAST` ile ondalık basamak optimizasyonu
* **Geçici Tablolar:** `WITH` (CTE) ile karmaşık sorguların sadeleştirilmesi
* **Pencere Fonksiyonları (Window Functions):** `LAG()` ile önceki ay kıyaslamaları, `OVER(ROWS BETWEEN...)` ile hareketli ortalama hesaplamaları

## 🚀 Kurulum ve Kullanım
1. Bu repodaki `.sql` dosyasını indirin.
2. SQL Server Management Studio (SSMS) üzerinden veri tabanınıza bağlanın.
3. Kendi veri tabanı adınıza göre `USE [VeritabaniAdiniz]` kısmını güncelleyerek sorguları çalıştırabilirsiniz.

---
## 👨‍💻 Yazar
**Berkay Güler** - Yönetim Bilişim Sistemleri (MIS) Öğrencisi & Veri Analisti Adayı  
GitHub: [@berk0yglr](https://github.com/berk0yglr)
