# Haraz Coffee House - Inventory Management System

A Progressive Web App (PWA) for managing inventory at Haraz Coffee House.

## Features

- 📦 **Inventory Management** - Track stock levels, add/edit/delete items
- 📊 **Dashboard Analytics** - View key metrics and trends
- 🔍 **Stock Audit** - Physical stock counting and reconciliation
- 🛒 **Smart Procurement** - Automated reorder suggestions
- 📈 **Trends & Reports** - Purchase history and supplier analytics
- 📱 **PWA Support** - Install on mobile and desktop devices
- 💾 **Cloud Sync** - Backup and restore data to cloud
- 📥 **Excel Export** - Export inventory to Excel spreadsheets

## Installation as PWA

### On Mobile (Android/iOS):
1. Open the website in your browser
2. Look for the "Add to Home Screen" or "Install" prompt
3. Tap "Install" or "Add"
4. The app will be installed on your device

### On Desktop (Chrome/Edge):
1. Open the website in your browser
2. Look for the install icon (➕) in the address bar
3. Click "Install"
4. The app will open in its own window

## Deploying to GitHub Pages

### Step 1: Create a GitHub Repository
1. Go to [GitHub](https://github.com) and create a new repository
2. Name it something like `haraz-inventory`
3. Don't initialize with README (we already have files)

### Step 2: Push Your Code
Open PowerShell in this directory and run:

```powershell
git init
git add .
git commit -m "Initial commit: Haraz Inventory PWA"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name.

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section (in the left sidebar)
4. Under **Source**, select **GitHub Actions**
5. The workflow will automatically deploy your site

### Step 4: Access Your PWA
After the deployment completes (usually 1-2 minutes):
- Your site will be available at: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

## Auto-Update on Changes

The GitHub Actions workflow (`.github/workflows/deploy.yml`) is configured to automatically:
- Deploy on every push to the `main` or `master` branch
- Update the live site with your latest changes

To update your live site:
```powershell
git add .
git commit -m "Description of your changes"
git push
```

## Local Development

Simply open `index.html` in a web browser. For testing PWA features locally, you'll need to run a local server:

```powershell
# Using Python 3
python -m http.server 8000

# Using Node.js (if you have http-server installed)
npx http-server
```

Then visit `http://localhost:8000` in your browser.

## Data Storage

- **Local Storage**: All data is stored in browser's localStorage
- **Cloud Backup**: Optional cloud sync via JSONbin.io
- **Export**: Download backups as JSON or Excel files

## Browser Support

- ✅ Chrome/Edge (Recommended)
- ✅ Firefox
- ✅ Safari (iOS 11.3+)
- ✅ Samsung Internet

## License

Private use for Haraz Coffee House.

---

**Developed for Haraz Coffee House** ☕
