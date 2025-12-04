# Export to GitHub - Quick Start

## ⚡ Quick Method

### Step 1: Edit the Script
1. Open `export-to-github.ps1`
2. Change `YOUR-USERNAME-HERE` to your GitHub username
3. (Optional) Change the repository name if you want

### Step 2: Run the Script
Right-click `export-to-github.ps1` and select **"Run with PowerShell"**

Or run in PowerShell:
```powershell
.\export-to-github.ps1
```

The script will:
- Initialize git (if needed)
- Add all files
- Create a commit
- Guide you to create the GitHub repo
- Push everything to GitHub

---

## 📝 Manual Method

If you prefer to do it manually, see:
- **[QUICK-EXPORT.md](./QUICK-EXPORT.md)** - 3-step guide
- **[GITHUB-SETUP.md](./GITHUB-SETUP.md)** - Detailed instructions with multiple options

---

## 🚀 After Exporting

Once your code is on GitHub:

1. **Deploy to Vercel:**
   - Go to [vercel.com](https://vercel.com)
   - Import your GitHub repository
   - Set Root Directory to `website`
   - Deploy!

2. **Your website will be live** at a URL like `your-project.vercel.app`

---

## ❓ Troubleshooting

**Script won't run?**
- Right-click the file → Properties → Unblock
- Or run PowerShell as Administrator

**Authentication issues?**
- Use GitHub Desktop (see GITHUB-SETUP.md)
- Or set up GitHub CLI: `gh auth login`

**Need help?** See GITHUB-SETUP.md for detailed troubleshooting.

