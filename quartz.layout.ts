import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  afterBody: [],
  footer: Component.Footer({
    links: {
      "No Clocks": "https://noclocks.dev",
      GitHub: "https://github.com/noclocks",
      Blog: "https://blog.noclocks.dev",
      LinkedIn: "https://linkedin.com/company/noclocks",
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs({
      spacerSymbol: "/",
      rootName: "Home",
      resolveFrontmatterTitle: true,
      hideOnRoot: false,
      showCurrentPage: true,
    }),
    Component.ArticleTitle(),
    Component.ContentMeta({
      showReadingTime: true,
      showComma: true,
    }),
    Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(
      Component.Explorer({
        title: "Explorer",
        folderClickBehavior: "collapse",
        folderDefaultState: "collapsed",
        useSavedState: true,
        sortFn: (a, b) => {
          // folders first, then alphabetically
          if ((!a.file && !b.file) || (a.file && b.file)) {
            return a.displayName.localeCompare(b.displayName, undefined, {
              numeric: true,
              sensitivity: "base",
            })
          }
          if (a.file && !b.file) return 1
          return -1
        },
        filterFn: (node) => {
          // hide certain folders from explorer
          const hiddenFolders = ["99-ARCHIVES", ".obsidian", ".cursor", ".scripts"]
          return !hiddenFolders.some((folder) => node.name.includes(folder))
        },
        mapFn: (node) => {
          // clean up display names
          if (node.displayName === "index") {
            node.displayName = "Overview"
          }
          // remove common prefixes for cleaner display
          node.displayName = node.displayName
            .replace(/^MOC - /, "")
            .replace(/^Code - /, "")
            .replace(/^Definition - /, "")
            .replace(/^List - /, "")
            .replace(/^Guide - /, "")
            .replace(/^Checklist - /, "")
        },
      })
    ),
  ],
  right: [
    Component.Graph({
      localGraph: {
        drag: true,
        zoom: true,
        depth: 2,
        scale: 1.1,
        repelForce: 0.5,
        centerForce: 0.3,
        linkDistance: 30,
        fontSize: 0.6,
        opacityScale: 1,
        removeTags: [],
        showTags: true,
      },
      globalGraph: {
        drag: true,
        zoom: true,
        depth: -1,
        scale: 0.9,
        repelForce: 0.5,
        centerForce: 0.3,
        linkDistance: 30,
        fontSize: 0.6,
        opacityScale: 1,
        removeTags: [],
        showTags: true,
      },
    }),
    Component.DesktopOnly(Component.TableOfContents()),
    Component.Backlinks(),
    Component.DesktopOnly(
      Component.RecentNotes({
        title: "Recent Notes",
        limit: 5,
        filter: (f) =>
          !f.slug!.startsWith("05-SYSTEM/") &&
          !f.slug!.startsWith("99-ARCHIVES/"),
        linkToMore: false,
        showTags: false,
      })
    ),
  ],
}

// components for pages that display lists of pages (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs({
      spacerSymbol: "/",
      rootName: "Home",
      resolveFrontmatterTitle: true,
    }),
    Component.ArticleTitle(),
    Component.ContentMeta(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(
      Component.Explorer({
        title: "Explorer",
        folderClickBehavior: "collapse",
        folderDefaultState: "collapsed",
        useSavedState: true,
      })
    ),
  ],
  right: [],
}
