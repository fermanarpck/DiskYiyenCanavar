# DiskYiyenCanavar 🧹💻

Mac'in nefes alsın diye yazılmış terminal destekli temizlik scripti.

Diskinde "yer yok" uyarısı mı alıyorsun?  
Safari önbelleği, Xcode artıkları, çöp kutusu, simülatörler…  
Tüm bu dijital çöpleri tek komutla canavara yedir!

## 🚀 Ne Yapar?

- Kullanıcı önbelleklerini (~/Library/Caches) temizler
- Çöp kutusunu siler
- Xcode ve iOS simülatör geçici verilerini yok eder
- Büyük klasörleri analiz ederek sana rapor sunar
- Diskinde yer açar, ruhunda ferahlık sağlar

## ⚠️ Uyarı

Bu script bazı dosyaları **geri dönüşümsüz** olarak siler.  
Eğer ne yaptığını bilmiyorsan, bir kahve içip düşün deriz ☕🙂  
Ama biz yine de `"y"` tuşuna basacağını biliyoruz.

## 🛠️ Kullanım

```bash
chmod +x supurgeci.sh
./supurgeci.sh
```

Süpürme işlemi bitince sistemi yeniden başlatman tavsiye edilir:
```
bash
Kopyala
Düzenle
sudo shutdown -r now
```
