#!/bin/bash

echo "📦 En çok yer kaplayan klasörler (Ev dizininde):"
du -h -d 1 ~ | sort -hr | head -n 10

echo ""
echo "🧹 Silinebilecek klasörler tespit ediliyor..."

# Çöp kutusu
TRASH_SIZE=$(du -sh ~/.Trash 2>/dev/null | cut -f1)
echo "🗑️ Çöp Kutusu boyutu: $TRASH_SIZE"

# Cache klasörleri
CACHE_SIZE=$(du -sh ~/Library/Caches 2>/dev/null | cut -f1)
echo "🗃️ Kullanıcı Cache boyutu: $CACHE_SIZE"

# Xcode Derleme verisi (varsa)
if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
  XCODE_SIZE=$(du -sh ~/Library/Developer/Xcode/DerivedData 2>/dev/null | cut -f1)
  echo "📱 Xcode Geçici veriler: $XCODE_SIZE"
fi

# iOS Simulator verileri
if [ -d ~/Library/Developer/CoreSimulator ]; then
  SIM_SIZE=$(du -sh ~/Library/Developer/CoreSimulator 2>/dev/null | cut -f1)
  echo "📱 iOS Simülatör verileri: $SIM_SIZE"
fi

# Uyarı ver
echo ""
read -p "Yukarıdaki dosyaları temizlemek ister misin? (y/n): " confirm
if [[ $confirm == "y" ]]; then
  echo "🧼 Temizlik başlatılıyor..."

  rm -rf ~/.Trash/*
  rm -rf ~/Library/Caches/*
  rm -rf ~/Library/Developer/Xcode/DerivedData/*
  rm -rf ~/Library/Developer/CoreSimulator/*
  
  echo "✅ Temizlik tamamlandı!"
else
  echo "❌ Temizlik iptal edildi."
fi

echo ""
echo "🔁 Yeniden başlatmanı öneririm. Şu komutla yapabilirsin:"
echo "sudo shutdown -r now"

