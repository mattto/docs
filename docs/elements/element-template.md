---
layout: default
published: false
---

<!-- page specific stylesheet needs to be inline to the page so ajax injects it. -->
<link rel="stylesheet" href="/css/elementpage.css">

{% assign element = site.data.elements[page.element] %}

<h1>Hello from {{element.name}}</h1>
<div>{{element.description}}</div>
