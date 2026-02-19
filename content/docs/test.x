---
title: My Page
---



Fumadocs detects from the following properties to construct page trees.

| name          | description                           |
| ------------- | ------------------------------------- |
| `title`       | The title of page                     |
| `description` | The description of page               |
| `icon`        | The name of icon, see [Icons](#icons) |

<Callout title="Good to Know">
  Page information is supplied by the content source such as **Fumadocs MDX**.

  On Fumadocs MDX, you can specify a [`schema`](/docs/mdx/collections#schema-1) option to customise frontmatter schema.
</Callout>

### Slugs

The slugs of a page are generated from its file path.

| path (relative to content folder) | slugs             |
| --------------------------------- | ----------------- |
| `./dir/page.mdx`                  | `['dir', 'page']` |
| `./dir/index.mdx`                 | `['dir']`         |

## Folder

Organize multiple pages, you can create a [Meta file](#meta) to customise folders.

### Folder Group

By default, putting a file into folder will change its slugs.
You can wrap the folder name in parentheses to avoid impacting the slugs of child files.

| path (relative to content folder) | slugs      |
| --------------------------------- | ---------- |
| `./(group-name)/page.mdx`         | `['page']` |

### Root Folder

Marks the folder as a root folder, only items in the opened root folder will be visible.

```json title="meta.json"
{
  "title": "Name of Folder",
  "description": "The description of root folder (optional)",
  "root": true
}
```

For example, when you are opening root folder `framework`, the other folders (e.g. `headless`) are not shown on the sidebar and other navigation elements.
 

<Callout title="Fumadocs UI">
  Fumadocs UI renders root folders as [Sidebar Tabs](/docs/ui/navigation/sidebar#sidebar-tabs), which allows user to switch between them.
</Callout>

## Meta

Customise folders by creating a `meta.json` file in the folder.
 

| name          | description                           |
| ------------- | ------------------------------------- |
| `title`       | Display name                          |
| `icon`        | The name of icon, see [Icons](#icons) |
| `pages`       | Folder items (see below)              |
| `defaultOpen` | Open the folder by default            |

### Pages

Folder items are sorted alphabetically by default, you can add or control the order of items using `pages`.
 


