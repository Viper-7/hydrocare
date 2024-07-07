<div class="container">
    <div class="row">
        <section class="col-lg-10<% if not $Children %> offset-lg-1<% end_if %>">
            <% if $ElementalAreaID %>
                <%-- Support for content blocks, if enabled --%>
                <% if $ElementalArea.RichLinks %>
                    $ElementalArea.RichLinks %>
                <% else %>
                    $ElementalArea
                <% end_if %>
            <% else %>
                <%-- CMS page content --%>
                <% if $Content.RichLinks %>
                    $Content.RichLinks
                <% else %>
                    $Content
                <% end_if %>
            <% end_if %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
        <% if $Children %>
        <aside class="col-lg-3 offset-lg-1">
            <% include SidebarNav %>
        </aside>
        <% end_if %>
    </div>
</div>
<% include PageUtilities %>
