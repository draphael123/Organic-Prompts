# Export to GitHub - Step by Step Guide

Follow these steps to push your project to GitHub and deploy to Vercel.

## Option 1: Using GitHub Desktop (Easiest)

### Step 1: Install GitHub Desktop
Download from [desktop.github.com](https://desktop.github.com)

### Step 2: Create Repository
1. Open GitHub Desktop
2. Click **File → Add Local Repository**
3. Browse to this folder and select it
4. Click **Create a new repository**
   - Name: `organic-content-team-prompts` (or your choice)
   - Description: "Tools, prompts, and frameworks for organic content team mini-workshops"
   - Keep it local for now

### Step 3: Commit Files
1. You'll see all files listed as "changes"
2. Add a commit message: "Initial commit: Team resources website and prompts"
3. Click **Commit to main**

### Step 4: Publish to GitHub
1. Click **Publish repository** button
2. Choose:
   - ✅ Keep code private (recommended for internal tools)
   - Or make it public if you want
3. Click **Publish Repository**

### Step 5: Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click **Add New → Project**
3. Import your GitHub repository
4. Set **Root Directory** to `website`
5. Click **Deploy**

Done! 🎉

---

## Option 2: Using Command Line (Git)

### Step 1: Initialize Git (if not already done)
```bash
git init
```

### Step 2: Add All Files
```bash
git add .
```

### Step 3: Create Initial Commit
```bash
git commit -m "Initial commit: Team resources website and prompts"
```

### Step 4: Create Repository on GitHub
1. Go to [github.com/new](https://github.com/new)
2. Repository name: `organic-content-team-prompts` (or your choice)
3. Description: "Tools, prompts, and frameworks for organic content team mini-workshops"
4. Choose **Private** (recommended) or Public
5. **Don't** initialize with README (we already have one)
6. Click **Create repository**

### Step 5: Connect and Push
GitHub will show you commands. Use these:

```bash
git remote add origin https://github.com/YOUR-USERNAME/organic-content-team-prompts.git
git branch -M main
git push -u origin main
```

Replace `YOUR-USERNAME` with your GitHub username.

### Step 6: Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click **Add New → Project**
3. Import your GitHub repository
4. Set **Root Directory** to `website`
5. Click **Deploy**

Done! 🎉

---

## Option 3: Quick Push (Already have Git installed)

Run these commands in this folder:

```bash
# Initialize git (if needed)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Team resources website and prompts"

# Create repo on GitHub first, then:
git remote add origin https://github.com/YOUR-USERNAME/REPO-NAME.git
git branch -M main
git push -u origin main
```

---

## After Pushing to GitHub

### Continuous Deployment Setup

Once your repo is on GitHub and connected to Vercel:

✅ **Automatic deployments** - Every push to `main` deploys automatically
✅ **Preview deployments** - Pull requests get preview URLs
✅ **Easy updates** - Just push changes, deployment happens automatically

### Making Updates

1. Edit files locally
2. Commit changes:
   ```bash
   git add .
   git commit -m "Your update message"
   git push
   ```
3. Vercel automatically deploys the update

### Team Collaboration

Share your GitHub repository with your team:
- They can clone it
- Submit pull requests for changes
- Everyone gets automatic preview URLs

---

## Repository Structure

Your GitHub repo will contain:

```
organic-content-team-prompts/
├── website/              # The deployable website
│   ├── index.html
│   ├── prompts.html
│   ├── guides.html
│   ├── examples.html
│   ├── strategy.html
│   ├── styles.css
│   ├── script.js
│   ├── vercel.json
│   └── README.md
├── prompt-templates/     # Markdown templates
├── guides/              # Documentation
├── examples/            # Examples
├── strategy-frameworks/ # Strategy docs
├── README.md           # Main project README
└── .gitignore          # Git ignore file
```

---

## Troubleshooting

**Issue:** "Repository already exists"
- Solution: Delete the local `.git` folder and start over, or use a different repo name

**Issue:** Authentication failed
- Solution: Use GitHub Desktop or set up SSH keys for command line

**Issue:** Files not showing on GitHub
- Solution: Make sure you ran `git add .` before committing

**Need help?** Check GitHub's documentation or ask your team lead.

