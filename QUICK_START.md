# Quick Start Guide - Deploying to GitHub

## Option 1: Using the Setup Script (Easiest)

1. **Right-click** on `setup-github.ps1`
2. Select **"Run with PowerShell"**
3. Follow the prompts:
   - Enter your GitHub username
   - Enter your desired repository name
4. The script will prepare everything for you

## Option 2: Manual Setup

### Step 1: Create GitHub Repository
1. Go to https://github.com/new
2. Repository name: `haraz-inventory` (or your choice)
3. Keep it **Public** (for free GitHub Pages)
4. **DO NOT** check "Add a README file"
5. Click **"Create repository"**

### Step 2: Push Your Code
Open PowerShell in this folder and run these commands:

```powershell
git init
git add .
git commit -m "Initial commit: Haraz Inventory PWA"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

**Replace:**
- `YOUR_USERNAME` with your GitHub username
- `YOUR_REPO` with your repository name

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under **Source**, select **"GitHub Actions"**
5. Wait 1-2 minutes for deployment

### Step 4: Access Your App
Your app will be live at:
```
https://YOUR_USERNAME.github.io/YOUR_REPO/
```

## Testing PWA Installation

### On Mobile:
1. Open the URL in Chrome/Safari
2. Tap the browser menu (⋮ or share icon)
3. Select "Add to Home Screen" or "Install"
4. The app icon will appear on your home screen

### On Desktop:
1. Open the URL in Chrome/Edge
2. Look for the install icon (⊕) in the address bar
3. Click "Install"
4. The app opens in its own window

## Making Updates

After making changes to your code:

```powershell
git add .
git commit -m "Description of changes"
git push
```

The site will automatically update in 1-2 minutes!

## Files Overview

- `index.html` - Main application file
- `manifest.json` - PWA configuration
- `sw.js` - Service worker for offline support
- `icon-192.png` & `icon-512.png` - App icons
- `.github/workflows/deploy.yml` - Auto-deployment configuration

## Troubleshooting

**Problem: "git is not recognized"**
- Install Git from: https://git-scm.com/download/win

**Problem: Push failed**
- Make sure you created the repository on GitHub first
- Check that the repository URL is correct

**Problem: PWA not installing**
- Make sure you're using HTTPS (GitHub Pages uses HTTPS)
- Clear browser cache and try again
- Check browser console for errors (F12)

**Problem: Changes not showing**
- Wait 1-2 minutes for GitHub Actions to deploy
- Hard refresh the page (Ctrl+Shift+R)
- Clear service worker cache in browser DevTools

## Need Help?

Check the full README.md for detailed documentation.

---

Good luck! ☕
