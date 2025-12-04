# Fixing Vercel 404 Error

If you're seeing a 404 error on Vercel, follow these steps:

## Quick Fix Steps

### Step 1: Check Vercel Project Settings

1. Go to your Vercel dashboard
2. Click on your project
3. Go to **Settings** → **General**
4. Check **Root Directory**:
   - Should be set to: `website`
   - If blank or wrong, update it and **Save**

### Step 2: Redeploy

After updating settings:
1. Go to **Deployments** tab
2. Click the **...** menu on the latest deployment
3. Click **Redeploy**

OR trigger a new deployment by:
- Making a small change and pushing to GitHub, OR
- Going to **Deployments** → Click **Redeploy** button

### Step 3: Verify Files Are Present

The `website` folder should contain:
- ✅ `index.html`
- ✅ `prompts.html`
- ✅ `guides.html`
- ✅ `examples.html`
- ✅ `strategy.html`
- ✅ `styles.css`
- ✅ `script.js`
- ✅ `vercel.json`

## Alternative: Redeploy from Website Folder

If the root directory setting isn't working:

### Option A: Use Vercel CLI

```bash
cd website
npm i -g vercel
vercel --prod
```

### Option B: Change Root Directory to Root

1. In Vercel Settings → General
2. Set **Root Directory** to: `.` (empty or root)
3. In **Build and Development Settings**:
   - **Output Directory**: `website`
   - **Install Command**: (leave blank)
   - **Build Command**: (leave blank)

### Option C: Move Files to Root (Not Recommended)

Only if nothing else works - move all website files to repository root.

## Common Issues

**Issue:** Root Directory shows but files aren't found
- **Fix:** Make sure there's no trailing slash, just `website`

**Issue:** Deployment succeeds but shows 404
- **Fix:** Check the deployment logs in Vercel dashboard

**Issue:** Clean URLs not working
- **Fix:** The updated vercel.json should handle this

## Still Having Issues?

1. Check deployment logs in Vercel dashboard
2. Try accessing `your-site.vercel.app/index.html` directly
3. Check that all files were pushed to GitHub
4. Verify the repository structure matches what's expected

## Updated vercel.json

I've updated the `vercel.json` file with a more explicit configuration. Make sure to:
1. Commit and push the updated vercel.json
2. Wait for Vercel to redeploy automatically, OR
3. Manually trigger a redeploy

