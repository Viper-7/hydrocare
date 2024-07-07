<!doctype html>
<html class="no-js" lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle.XML<% else %>$Title.XML<% end_if %> | $SiteConfig.Title.XML</title>
        $MetaTags(false)
        <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />
        <% if $RSSLink %>
        <link rel='alternate' type='application/rss+xml' title='RSS' href='$RSSLink'>
        <% end_if %>
        <% require themedCSS('dist/css/main.css') %>
        <% include Favicon %>
    </head>
    <body class="$ClassName">
        <div id="pixi-container" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1;"></div>
        <header role="banner">
            <% include Header %>
            <% include MainNav %>
        </header>
        <main id="main" class="main" role="main">
            $Layout
        </main>
        <% include PageShowcase %>
        <footer class="footer-site" role="contentinfo">
            <% include Footer %>
        </footer>
        <% require themedJavascript('dist/js/jquery.min.js') %>
        <% require themedJavascript('dist/js/main.js') %>
        <% include GoogleAnalytics %>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pixi.js/6.2.1/browser/pixi.min.js"></script>
        <% require themedJavascript('dist/js/pixi_background.js') %>
    </body>
</html>
