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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <% require themedCSS('dist/css/main.css') %>
        <% include Favicon %>
<style>/*
This license can also be found at this permalink: https://www.fontsquirrel.com/license/league-spartan

Copyright (c) September 22 2014, Micah Rich micah@micahrich.com, with Reserved Font Name: "League Spartan".

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at: http://scripts.sil.org/OFL

—————————————————————————————-
SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
—————————————————————————————-
*/
@import url('//img1.wsimg.com/blobby/go/font/LeagueSpartan/league-spartan.css');
</style>
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
