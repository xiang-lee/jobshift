# AI Job Exposure Site

A static two-page site built from the `mariodian/jobs` repository's `filters` branch dataset.

## What is included

- `index.html` - the main bilingual public-facing report
- `distribution.html` - the employment-weighted distribution dashboard
- `assets/favicon.svg` - a lightweight favicon
- `assets/og-preview.png` - preview image placeholder for social sharing
- `_headers` - basic security and cache headers for Cloudflare Pages
- `_redirects` - convenience redirects
- `robots.txt`
- `404.html`

## Data provenance

This project is based on the following public sources:

- Repository: https://github.com/mariodian/jobs/tree/filters
- Project overview and method: https://github.com/mariodian/jobs/blob/filters/README.md
- Occupation and employment data: https://github.com/mariodian/jobs/blob/filters/occupations.csv
- AI exposure scores: https://github.com/mariodian/jobs/blob/filters/scores.json
- Upstream public source for occupational data: https://www.bls.gov/ooh/

## Key numbers used in the site

These figures were taken from the repo data and then summarized for the site:

- 342 occupations in the source list
- 341 occupations used in employment-weighted calculations
- 143.1M jobs in the weighted base
- Simple average AI exposure: 5.3
- Employment-weighted average AI exposure: 4.9
- High exposure (8-10): 25.21M jobs, 17.6%
- Middle zone (3-7): 87.92M jobs, 61.5%
- Low exposure (0-2): 29.94M jobs, 20.9%

## Deploy to GitHub and Cloudflare Pages

### 1. Create a new GitHub repository

Create a new repository in your GitHub account, for example `ai-job-exposure-site`.

### 2. Upload the project

```bash
git init
git branch -M main
git add .
git commit -m "Initial static site"
git remote add origin https://github.com/<YOUR_USERNAME>/ai-job-exposure-site.git
git push -u origin main
```

### 3. Deploy on Cloudflare Pages

In Cloudflare Pages:

- Create a new project
- Connect the GitHub repository
- Framework preset: `None`
- Build command: leave empty
- Build output directory: `/`

Because this is a static site, no build step is required.

## Recommended post-deploy edits

After the site is live, update the following:

- `index.html`
  - Set a canonical URL
  - Replace relative `og:image` with an absolute URL on your deployed domain
  - Optionally add your preferred analytics snippet
- Footer copy
  - Add your domain or profile link
- `robots.txt`
  - Add your final sitemap URL if you generate one later

## Notes

This site is interpretive, not an official forecast. It is best treated as a public explanatory layer over the repo's scoring framework.
