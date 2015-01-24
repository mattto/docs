---
layout: default
published: false
---

<!-- page specific stylesheet needs to be inline to the page so ajax injects it. -->
<link rel="stylesheet" href="/css/elementpage.css">

{% assign element = site.data.elements[page.element] %}

<doc-page></doc-page>

<script>
  (function() {
    var elementDoc = {{element | jsonify}};
    document.addEventListener('polymer-ready', function() {
      document.querySelector('doc-page').data = elementDoc;
    });
  })();
</script>
