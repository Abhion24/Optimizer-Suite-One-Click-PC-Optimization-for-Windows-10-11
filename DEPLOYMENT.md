# Deployment Guide for OptimizerSuite Website

This guide explains how to deploy the OptimizerSuite website to GitHub Pages.

## Prerequisites

1. A GitHub account
2. Git installed on your local machine
3. This repository cloned to your local machine

## GitHub Pages Setup

### 1. Repository Configuration

1. Go to your repository settings on GitHub
2. Scroll down to the "Pages" section
3. Under "Source", select:
   - Branch: `main` (or your default branch)
   - Folder: `/docs`
4. Click "Save"

### 2. Custom Domain (Optional)

If you want to use a custom domain:

1. Update the `CNAME` file in the `docs/` directory with your domain
2. In your domain registrar's DNS settings, add a CNAME record pointing to `yourusername.github.io`
3. In GitHub repository settings, under "Pages", enter your custom domain

### 3. Deployment Process

The website is automatically deployed when you push changes to the main branch. GitHub Pages will serve the content from the `docs/` directory.

To deploy updates:

```bash
# Make your changes
# Commit and push to GitHub
git add .
git commit -m "Update website"
git push origin main
```

### 4. Verification

After pushing your changes:

1. Wait 1-2 minutes for GitHub to process the deployment
2. Visit your site at: `https://yourusername.github.io/repository-name/`
3. Check the "Pages" section in your repository settings for deployment status

## File Structure

The `docs/` directory contains all files needed for the website:

```
docs/
├── index.html          # Main HTML file with React components
├── styles.css          # Custom CSS styling
├── analytics.js        # Basic analytics tracking
├── 404.html            # Custom 404 page
├── robots.txt          # Search engine robots file
├── sitemap.xml         # XML sitemap for SEO
├── .nojekyll           # Disable Jekyll processing
├── CNAME               # Custom domain configuration
├── favicon.svg         # Website favicon
├── favicon.png         # Website favicon
├── Screenshot*.png     # Software screenshots
├── README.md           # Documentation
├── README.txt          # Software information
└── Optimizer2.0Setup.exe # Software executable
```

## Troubleshooting

### Common Issues

1. **Site not updating**: 
   - Wait a few minutes for GitHub to process the deployment
   - Check the "Pages" section in repository settings for errors

2. **404 errors**:
   - Ensure the `docs/` directory contains an `index.html` file
   - Verify the source settings in the "Pages" section

3. **Custom domain not working**:
   - Check your DNS settings
   - Ensure the CNAME file contains the correct domain
   - Note that it may take up to 24 hours for DNS changes to propagate

### Contact

For support, contact: support@optimizersuite.com

© 2025 Abhi Khade. All rights reserved.