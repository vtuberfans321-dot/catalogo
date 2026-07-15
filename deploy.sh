#!/bin/bash
# ============================================
# 🚀 DEPLOY SCRIPT - Sube el catálogo a GitHub Pages
# ============================================
# Requisito: Tener cuenta en GitHub

echo "📦 Preparando deploy..."

# 1. Move files to a clean directory
mkdir -p /d/Libros/site
cp -r /d/Libros/.web/* /d/Libros/site/

# 2. Create .nojekyll for GitHub Pages
touch /d/Libros/site/.nojekyll

# 3. Init git
cd /d/Libros/site
git init
git checkout -b main
git add -A
git commit -m "Deploy: Mega Catálogo $(date +%Y-%m-%d)"

echo ""
echo "============================================"
echo "✅ SITIO LISTO PARA SUBIR"
echo "============================================"
echo ""
echo "Para subirlo a GitHub Pages:"
echo ""
echo "  1. Crea un repo en GitHub llamado 'catalogo'"
echo "     (https://github.com/new)"
echo ""
echo "  2. Conecta y sube:"
echo "     git remote add origin https://github.com/TU-USUARIO/catalogo.git"
echo "     git push -u origin main"
echo ""
echo "  3. Activa GitHub Pages en:"
echo "     Settings > Pages > branch: main, folder: / (root)"
echo ""
echo "  4. Tu página estará en:"
echo "     https://TU-USUARIO.github.io/catalogo"
echo ""
echo "============================================"
echo "📊 DATOS DEL SITIO:"
find /d/Libros/site -type f | wc -l
echo "archivos listos para subir"
du -sh /d/Libros/site
echo "============================================"
