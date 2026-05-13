# Raster and social images

Add **`og-1200x630.webp`** here before you rely on social previews. Target **1200×630**, **WebP quality 82**, under **200 KB** when possible per Phyllux workspace image rules.

Then add to each HTML `<head>`:

```html
<meta property="og:image" content="https://novelmatestudio.com/assets/og-1200x630.webp" />
```

Until the file exists, the site omits `og:image` to avoid broken preview URLs.
