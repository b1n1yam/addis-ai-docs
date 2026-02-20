import type { BaseLayoutProps } from 'fumadocs-ui/layouts/shared';

/**
 * Shared layout configurations
 *
 * you can customise layouts individually from:
 * Home Layout: app/(home)/layout.tsx
 * Docs Layout: app/docs/layout.tsx
 */
export function baseOptions(): BaseLayoutProps {
  return {
    nav: {
      title: (
        <>         
            {/* Light Mode Logo: Visible by default, hidden when .dark class is present */}
          <img 
            src="/images/Addis-Ai-Logo-Dark.png" 
            alt="Addis AI" 
            className="block dark:hidden pr-20"
            height="24"
          />

          {/* Dark Mode Logo: Hidden by default, visible when .dark class is present */}
          <img 
            src="/images/addis_ai_full.png" 
            alt="Addis AI" 
            className="hidden dark:block pr-20"
            height="24"
          />
        </>
      ),
    },
    // see https://fumadocs.dev/docs/ui/navigation/links
    links: [],
  };
}
