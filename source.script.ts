import { defineConfig } from 'fumadocs-mdx/config';
import { visit } from 'unist-util-visit';

export { blog, docs } from './source.config';

function remarkElementIds() {
  return (tree: unknown, vfile: unknown) => {
    const file = vfile as { data?: { elementIds?: string[] } };
    file.data ??= {};
    file.data.elementIds ??= [];

    visit(tree as any, 'mdxJsxFlowElement', (element) => {
      if (!element.name || !element.attributes) return;

      const idAttr = element.attributes.find(
        (attr:any) => attr.type === 'mdxJsxAttribute' && attr.name === 'id',
      );

      if (idAttr && typeof idAttr.value === 'string') {
        file.data!.elementIds!.push(idAttr.value);
      }
    });
  };
}

export default defineConfig({
  mdxOptions: {
    valueToExport: ['elementIds', 'toc'],
    remarkNpmOptions: {
      persist: {
        id: 'package-manager',
      },
    },
    remarkHeadingOptions: {
      generateToc: true,
    },
    remarkPlugins: [remarkElementIds],
    rehypePlugins: () => [],
  },
});
