# Team Resources Website

A simple, clean website to host prompt templates, guides, examples, and strategy frameworks for your organic content team.

## 🚀 Quick Deploy to Vercel

**Easiest way:** See [VERCEL-DEPLOY.md](./VERCEL-DEPLOY.md) for step-by-step instructions.

Or simply:
1. Go to [vercel.com](https://vercel.com)
2. Sign in with GitHub
3. Drag and drop the `website` folder
4. Get instant public URL!

## What's Included

- **Homepage** - Overview and quick navigation
- **Prompts** - All prompt templates with copy-to-clipboard functionality
- **Guides** - Step-by-step instructions
- **Examples** - Real examples of using prompts effectively
- **Strategy** - Planning frameworks and checklists

## Features

- ✨ Clean, modern design
- 📋 One-click copy for all prompts
- 📱 Fully responsive (works on mobile)
- 🚀 Ready for Vercel deployment
- 🔗 Clean URLs (no .html extensions)
- 🎯 Easy to customize and update
- 🌐 Public-ready with proper meta tags

## Local Development

### View Locally

Just open `index.html` in your browser, or use a local server:

```bash
# Python 3
python -m http.server 8000

# Node.js (if you have http-server)
npx http-server
```

Then visit `http://localhost:8000`

## File Structure

```
website/
├── index.html          # Homepage
├── prompts.html        # Prompt templates
├── guides.html         # How-to guides
├── examples.html       # Examples
├── strategy.html       # Strategy frameworks
├── styles.css          # All styling
├── script.js           # Copy-to-clipboard functionality
├── vercel.json         # Vercel deployment config
├── README.md           # This file
└── VERCEL-DEPLOY.md    # Deployment guide
```

## Customization

### Changing Colors

Edit `styles.css` and modify the CSS variables:

```css
:root {
    --primary-color: #2563eb;  /* Your brand color */
    --primary-dark: #1e40af;
    --secondary-color: #10b981;
}
```

### Adding Content

1. **New Prompt**: Add to `prompts.html` using the same structure
2. **New Guide**: Add section to `guides.html` or create new page
3. **New Strategy Framework**: Add to `strategy.html`

### Adding Pages

1. Create new HTML file (e.g., `new-page.html`)
2. Copy nav structure from existing pages
3. Add link to nav in all pages
4. Add route to `vercel.json` rewrites
5. Style using existing CSS classes

## Clean URLs

The `vercel.json` file enables clean URLs:
- `/prompts` instead of `/prompts.html`
- All navigation automatically works

## Browser Support

Works in all modern browsers:
- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)

Copy-to-clipboard requires HTTPS (automatically provided by Vercel).

## License

Use freely within your organization. For public use, consider adding appropriate licensing.
