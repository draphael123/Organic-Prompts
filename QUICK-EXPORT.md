# Quick Export to GitHub

## Fastest Method (3 Steps)

### 1. Create GitHub Repository
Go to [github.com/new](https://github.com/new) and create a new repository:
- Name: `organic-content-team-prompts`
- Choose **Private** (recommended) or Public
- **Don't** initialize with README

### 2. Run These Commands
Open terminal/command prompt in this folder and run:

```bash
git init
git add .
git commit -m "Initial commit: Team resources website and prompts"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/organic-content-team-prompts.git
git push -u origin main
```

**Replace `YOUR-USERNAME`** with your actual GitHub username.

### 3. Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click **Add New → Project**
3. Import your GitHub repository
4. Set **Root Directory** to `website`
5. Click **Deploy**

**Done!** Your website is live and public. 🎉

---

## Need More Help?

See [`GITHUB-SETUP.md`](./GITHUB-SETUP.md) for detailed instructions with multiple options.

