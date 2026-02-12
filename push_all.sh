#!/bin/bash

echo "=========================================="
echo "Queen Koba - Push to Correct Repositories"
echo "=========================================="
echo ""

# Backend
echo "📦 Pushing Backend..."
cd /home/user/Public/koba/backend/queen-koba-backend
git remote set-url origin git@github.com:Rotz-kirwa/koba--backend-only.git
git push origin main
if [ $? -eq 0 ]; then
    echo "✅ Backend pushed successfully!"
else
    echo "❌ Backend push failed"
fi
echo ""

# Frontend
echo "🎨 Pushing Frontend..."
cd /home/user/Public/koba/frontend
git remote set-url origin git@github.com:Rotz-kirwa/koba-frontend-only.git
git push origin main
if [ $? -eq 0 ]; then
    echo "✅ Frontend pushed successfully!"
else
    echo "❌ Frontend push failed"
fi
echo ""

# Admin
echo "🔧 Pushing Admin..."
cd /home/user/Public/koba/admin
git remote set-url origin git@github.com:Rotz-kirwa/koba-administartion.git
git push origin main
if [ $? -eq 0 ]; then
    echo "✅ Admin pushed successfully!"
else
    echo "❌ Admin push failed"
fi
echo ""

echo "=========================================="
echo "Push Complete!"
echo "=========================================="
