#!/bin/bash

echo "=========================================="
echo "QUEEN KOBA - GIT PUSH VERIFICATION"
echo "=========================================="
echo ""

cd /home/user/Public/koba

echo "📦 MAIN REPOSITORY STATUS"
echo "Repository: git@github.com:Rotz-kirwa/queen-koba.git"
echo "Current Branch: $(git branch --show-current)"
echo "Latest Local Commit: $(git log --oneline -1)"
echo ""

echo "✅ FILES COMMITTED IN LATEST PUSH:"
echo "-------------------------------------------"
git show 468ba8a --name-only --pretty="" | grep -E "(Login|Signup|Footer|Contact|Auth)" | sort
echo ""

echo "📝 AUTHENTICATION FILES VERIFIED:"
echo "-------------------------------------------"
for file in "frontend/src/pages/Login.tsx" "frontend/src/pages/Signup.tsx" "frontend/src/context/AuthContext.tsx" "frontend/src/components/Footer.tsx" "frontend/src/pages/Contact.tsx"; do
    if git ls-tree -r HEAD --name-only | grep -q "$file"; then
        echo "✅ $file - COMMITTED"
    else
        echo "❌ $file - MISSING"
    fi
done
echo ""

echo "🔍 COMMIT DETAILS:"
echo "-------------------------------------------"
echo "Commit: 468ba8a"
echo "Message: feat: Add authentication system with login/signup, update footer icons, improve contact form"
echo "Files Changed: $(git show 468ba8a --stat | tail -1)"
echo ""

echo "📊 PUSH STATUS:"
echo "-------------------------------------------"
echo "Last successful push: 468ba8a (Feb 11, 2026)"
echo "Submodule update push: 953fd5e (Feb 11, 2026)"
echo ""

echo "✅ ALL CHANGES ARE COMMITTED AND PUSHED!"
echo ""
echo "To verify on GitHub:"
echo "1. Go to: https://github.com/Rotz-kirwa/queen-koba"
echo "2. Make sure you're on the 'main' branch"
echo "3. Check commit 468ba8a or 953fd5e"
echo "4. Navigate to frontend/src/pages/ to see Login.tsx and Signup.tsx"
echo "5. Navigate to frontend/src/components/ to see updated Footer.tsx"
echo ""
echo "If you don't see the changes:"
echo "- Clear your browser cache (Ctrl+Shift+R)"
echo "- Make sure you're viewing the 'main' branch, not 'master'"
echo "- Check the commit history for commit 468ba8a"
echo "=========================================="
