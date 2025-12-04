# Deploy to Vercel - Quick Guide

This website is ready to deploy to Vercel in just a few minutes!

## Option 1: Deploy via Vercel Dashboard (Easiest)

1. **Go to [vercel.com](https://vercel.com)** and sign in (GitHub account recommended)

2. **Click "Add New" → "Project"**

3. **Import your repository:**
   - If your code is in GitHub/GitLab/Bitbucket, connect and select your repo
   - Or drag and drop the `website` folder directly

4. **Configure project:**
   - **Framework Preset:** Other (or leave default)
   - **Root Directory:** `website` (if deploying from repo root) or leave blank if deploying the website folder directly
   - **Build Command:** Leave blank (static site, no build needed)
   - **Output Directory:** Leave blank or `.`

5. **Click "Deploy"**

6. **Done!** You'll get a URL like `your-project.vercel.app`

## Option 2: Deploy via Vercel CLI

1. **Install Vercel CLI:**
   ```bash
   npm i -g vercel
   ```

2. **Navigate to website folder:**
   ```bash
   cd website
   ```

3. **Deploy:**
   ```bash
   vercel
   ```

4. **Follow the prompts** - first time will ask you to login

5. **For production deployment:**
   ```bash
   vercel --prod
   ```

## Custom Domain (Optional)

After deployment:

1. Go to your project in Vercel dashboard
2. Click "Settings" → "Domains"
3. Add your custom domain
4. Follow DNS configuration instructions

## Clean URLs

The `vercel.json` configuration ensures clean URLs:
- `your-site.com/prompts` instead of `your-site.com/prompts.html`
- All navigation works seamlessly

## Continuous Deployment

If connected to a Git repository:
- **Automatic deploys** on every push to main branch
- **Preview deployments** for pull requests
- **Rollback** to previous versions anytime

## Environment Variables

Not needed for this static site, but if you want to add analytics or other features later, you can add environment variables in:
- Project Settings → Environment Variables

## Troubleshooting

**Issue:** 404 errors on routes
- **Solution:** Check that `vercel.json` is in the website folder

**Issue:** Styles not loading
- **Solution:** Ensure all files (styles.css, script.js) are in the same folder as HTML files

**Issue:** Copy-to-clipboard not working
- **Solution:** This requires HTTPS, which Vercel provides automatically. Make sure you're using the Vercel URL, not opening files locally.

## Next Steps

After deployment:
1. ✅ Test all links
2. ✅ Verify copy-to-clipboard works
3. ✅ Check mobile responsiveness
4. ✅ Share the URL with your team!

## Support

- Vercel Docs: https://vercel.com/docs
- Vercel Community: https://github.com/vercel/vercel/discussions

