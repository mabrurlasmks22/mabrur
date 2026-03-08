#!/bin/bash
# Complete setup script for Crew Manager Compliance

set -e

echo "🚀 =========================================="
echo "   CREW MANAGER COMPLIANCE - SETUP SCRIPT"
echo "=========================================="
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. Check dependencies
echo "📦 Checking dependencies..."
command -v git >/dev/null 2>&1 || { echo "❌ Git not found"; exit 1; }
command -v node >/dev/null 2>&1 || { echo "⚠️  Node.js not found (optional for workflows)"; }
command -v npm >/dev/null 2>&1 || { echo "⚠️  NPM not found (optional for build)"; }
echo -e "${GREEN}✅ Dependencies OK${NC}"
echo ""

# 2. Create directory structure
echo "📁 Creating directory structure..."
mkdir -p .github/workflows
echo -e "${GREEN}✅ Directory structure created${NC}"
echo ""

# 3. Initialize git (if not already)
if [ ! -d ".git" ]; then
    echo "🔧 Initializing git repository..."
    git init
    git config user.name "Crew Manager Bot"
    git config user.email "crew-manager@example.com"
    echo -e "${GREEN}✅ Git initialized${NC}"
else
    echo "✓ Git repository already exists"
fi
echo ""

# 4. Install dependencies
if [ -f "package.json" ]; then
    echo "📦 Installing npm dependencies..."
    npm ci --no-optional || npm install
    echo -e "${GREEN}✅ Dependencies installed${NC}"
fi
echo ""

# 5. Display next steps
echo ""
echo -e "${YELLOW}=========================================="
echo "   NEXT STEPS"
echo "==========================================${NC}"
echo ""
echo "1️⃣  Verify files in root directory:"
echo "   - index.html"
echo "   - crew-compliance-engine.js"
echo "   - index.js"
echo "   - package.json"
echo "   - README.md"
echo ""
echo "2️⃣  Verify workflow files:"
echo "   - .github/workflows/deploy.yml"
echo "   - .github/workflows/compliance-check.yml"
echo ""
echo "3️⃣  Test locally:"
echo "   npm run dev"
echo ""
echo "4️⃣  Commit and push:"
echo "   git add ."
echo '   git commit -m "Initial: Crew Manager Compliance v1.0"'
echo "   git branch -M main"
echo "   git remote add origin <your-repo-url>"
echo "   git push -u origin main"
echo ""
echo "5️⃣  Configure GitHub:"
echo "   - Settings → Pages → Select gh-pages branch"
echo "   - Settings → Secrets (add if needed)"
echo ""
echo "6️⃣  Trigger workflow:"
echo "   - Actions tab → Deploy to GitHub Pages → Run workflow"
echo ""
echo -e "${GREEN}✅ Setup complete!${NC}"
echo ""
