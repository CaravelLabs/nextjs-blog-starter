# Next.js Blog Template

A simple Blog App built on [Next.js](https://nextjs.org/)
## Environment Setup Instructions


### Getting Started Steps

- Install dependencies from the root folder - `npm install`


- Start the project - `npm run dev`


## Technical Documentation

### Tech Stack

| Name | Description |
| :--- | ---: |
| [Next.js](https://nextjs.org/) | React framework |
| [Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/) | App Hosting PaaS |
| [Tailwind CSS](https://tailwindcss.com/) | Rapidly build modern websites without ever leaving your HTML. |

<br />

### Folder Structure
```bash
📦src
 ┣ 📂app
 ┃ ┣ 📂posts
 ┃ ┃ ┗ 📂[slug]
 ┃ ┃ ┃ ┗ 📜page.tsx
 ┃ ┣ 📂_components
 ┃ ┃ ┣ 📜alert.tsx
 ┃ ┃ ┣ 📜avatar.tsx
 ┃ ┃ ┣ 📜container.tsx
 ┃ ┃ ┣ 📜cover-image.tsx
 ┃ ┃ ┣ 📜date-formatter.tsx
 ┃ ┃ ┣ 📜footer.tsx
 ┃ ┃ ┣ 📜header.tsx
 ┃ ┃ ┣ 📜hero-post.tsx
 ┃ ┃ ┣ 📜intro.tsx
 ┃ ┃ ┣ 📜markdown-styles.module.css
 ┃ ┃ ┣ 📜more-stories.tsx
 ┃ ┃ ┣ 📜post-body.tsx
 ┃ ┃ ┣ 📜post-header.tsx
 ┃ ┃ ┣ 📜post-preview.tsx
 ┃ ┃ ┣ 📜post-title.tsx
 ┃ ┃ ┗ 📜section-separator.tsx
 ┃ ┣ 📜globals.css
 ┃ ┣ 📜layout.tsx
 ┃ ┗ 📜page.tsx
 ┣ 📂interfaces
 ┃ ┣ 📜author.ts
 ┃ ┗ 📜post.ts
 ┣ 📂lib
 ┃ ┣ 📜api.ts
 ┃ ┣ 📜constants.ts
 ┃ ┗ 📜markdownToHtml.ts
```

<br />

### Low Level Technical Architecture

- Next.js Framework: Next.js is used as the primary framework for building the blog template app. It provides features like server-side rendering, routing, and code splitting out of the box.

- Styling: The UI of the blog template app is built using Tailwind CSS. These components are reusable and modular, allowing for a structured and maintainable codebase.

- Pages and Routing: Next.js uses a file-based routing system where each React component in the app directory corresponds to a route in the application. For example, `app/page.tsx` represents the home page of the blog, `app/posts/[slug]/page.tsx` represents individual blog posts, etc.

- Markdown or Contentful Integration: Blog content can be stored as Markdown files or managed through a headless CMS like Contentful but in this case we are storing it in a directory `web/_posts`. Markdown files can be parsed and rendered dynamically using libraries like remark.

- Data Fetching: Data fetching for blog posts, categories, tags, etc., can be done using various methods:

    - Static Site Generation (SSG): Pre-rendering blog posts at build time using getStaticProps and getStaticPaths.
    - Server-Side Rendering (SSR): Fetching dynamic data on the server-side using getServerSideProps.
    - Client-Side Data Fetching: Fetching data on the client-side using useEffect or third-party libraries like SWR or react-query.



<br />

### Cost to host in Azure

Official estimate from Azure Pricing Calculator - [Azure Pricing Calculator](https://azure.com/e/bbec79326663486ebfb3c76d30b1a9fc)

| Service Category | Service Type | Description | Estimated Monthly Cost | Estimated Upfront Cost |
| :---: | :---: | :---: | :---: | :---: |
| Compute | Azure App Service | *Basic Tier; 1 B1 (1 Core(s), 1.75 GB RAM, 10 GB Storage) x 730 Hours; Linux OS; 0 SNI SSL Connections; 0 IP SSL Connections; 0 Custom Domains; 0 Standard SLL Certificates; 0 Wildcard SSL Certificates* | $12.41 | $0 |
| Developer Tools | Azure DevOps | *Basic Plan; 5 User(s)* | $0 | $0 |
| Total | | | $12.41 | $0 |

***Disclaimer: The above cost is an estimate and may vary based on the actual usage. Caravel Labs or Microsoft is not responsible for additional costs incurred.***
