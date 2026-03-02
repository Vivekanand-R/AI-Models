#!/bin/bash
# ============================================================
#  Heart Disease MLOps — GitHub Setup Script
#  Run this ONCE from inside the project folder.
#
#  Usage:
#    chmod +x setup_github.sh
#    ./setup_github.sh
# ============================================================

set -e

echo ""
echo "🫀 Heart Disease MLOps — GitHub Setup"
echo "======================================="
echo ""

# 1. Ask for GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# 2. Repo name
REPO_NAME="heart-disease-mlops"
echo ""
echo "📦 Repository name: $REPO_NAME"
echo ""

# 3. Create repo on GitHub using gh CLI (if available), else give manual instructions
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI detected. Creating repo..."
    gh repo create "$REPO_NAME" --public --description "End-to-end MLOps pipeline for heart disease prediction with DVC, MLflow, FastAPI & Docker" --confirm
    REMOTE_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
else
    echo "⚠️  GitHub CLI (gh) not found."
    echo ""
    echo "👉 Please manually create a repo at:"
    echo "   https://github.com/new"
    echo "   Name: $REPO_NAME"
    echo "   Make it PUBLIC, do NOT initialize with README"
    echo ""
    read -p "Press ENTER once you've created the repo..."
    REMOTE_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
fi

# 4. Initialize git and push
echo ""
echo "🚀 Initializing git and pushing..."

git init
git add .
git commit -m "feat: initial MLOps project structure

- DVC data versioning pipeline
- MLflow experiment tracking
- XGBoost/RF/LogReg model training
- FastAPI serving endpoint
- pytest unit tests (preprocessing, model, API)
- GitHub Actions CI/CD workflow
- Docker + docker-compose deployment
- Makefile for developer convenience"

git branch -M main
git remote add origin "$REMOTE_URL"
git push -u origin main

echo ""
echo "✅ Done! Your repo is live at:"
echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
echo "📋 Next steps:"
echo "  1. Add your dataset:  cp /path/to/heart_disease.csv data/raw/"
echo "  2. Set up DVC remote: dvc remote add -d myremote gdrive://<folder-id>"
echo "  3. Run pipeline:      make all"
echo "  4. View experiments:  make mlflow-ui"
echo "  5. Update README:     Replace YOUR_USERNAME with $GITHUB_USERNAME"
echo ""
