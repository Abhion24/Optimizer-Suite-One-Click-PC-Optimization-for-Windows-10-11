# OptimizerSuite Website

This is the official website for OptimizerSuite, a PC optimization software for Windows 10/11.

## Live Demo

[![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-blue?logo=github)](https://abhion24.github.io/Optimizer-2.0-WebDevlopment/)

## Project Structure

```
.
├── docs/                   # GitHub Pages deployment directory
│   ├── index.html          # Main HTML file with React components
│   ├── styles.css          # Custom CSS styling
│   ├── analytics.js        # Basic analytics tracking
│   ├── 404.html            # Custom 404 page
│   ├── robots.txt          # Search engine robots file
│   ├── sitemap.xml         # XML sitemap for SEO
│   ├── .nojekyll           # Disable Jekyll processing
│   ├── CNAME               # Custom domain configuration
│   ├── favicon.svg         # Website favicon
│   ├── favicon.png         # Website favicon
│   ├── Screenshot*.png     # Software screenshots
│   ├── README.md           # Documentation
│   ├── README.txt          # Software information
│   ├── LICENSE.txt         # License information
│   └── Optimizer2.0Setup.exe # Software executable
├── README.md               # This file
└── LICENSE                 # Repository license
```

## Features

- Responsive single-page application built with React
- Tailwind CSS for styling
- Custom color scheme matching the software theme:
  - Primary: Gray (#4A4A4A)
  - Secondary: White (#FFFFFF)
  - Accents: 
    - CPU: Blue (#007BFF)
    - RAM: Green (#28A745)
    - Disk: Orange (#FD7E14)
- Sections:
  - Hero section with call-to-action
  - Features grid with icons
  - Download section with system requirements
  - About section with creator information
  - Contact form with validation
- Basic analytics tracking
- WCAG 2.1 accessibility compliance
- SEO optimization with sitemap and robots.txt

## Deployment

This website is designed for deployment on GitHub Pages:

1. The `docs/` directory contains all files needed for the website
2. GitHub Pages is configured to serve from the `docs/` directory
3. The site is accessible at: https://abhion24.github.io/Optimizer-2.0-WebDevlopment/

## Technical Requirements

- Framework: React with JSX
- Styling: Tailwind CSS
- CDN: jsDelivr for React, ReactDOM, and Tailwind CSS
- Responsive design for mobile and desktop
- Fast load times with lazy-loaded images

## How to View Locally

1. Clone this repository
2. Navigate to the `docs/` directory
3. Open `index.html` in any modern web browser

## Deployment

For detailed deployment instructions, see [DEPLOYMENT.md](DEPLOYMENT.md).

## Customization

To customize the website:

1. Modify content in the React components within `docs/index.html`
2. Update styles in `docs/styles.css`
3. Replace screenshot images with actual software screenshots
4. Update download link to point to the actual executable file

## Analytics

The website includes basic analytics tracking for:
- Page views
- Section views
- Download clicks

Data is stored in the browser's localStorage for demonstration purposes.

## Creator

Designed and built by [Abhi Khade](https://github.com/Abhion24)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.