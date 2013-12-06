RenderVariant
===
_An extension to ActiveView's render that allows variations of default partials._     

---
### Installing
Include render_variant in your gemfile to enable it. That's all.  

in /gemfile.rb:  

    gem 'render_variant'  

and that's it!

---
### Using
RenderVariant sits atop the existing call chain of ActionView's 'render' method. It allows for the inclusion of a ':variant' parameter that modifies the path given by the rendered object's to_partial_path method. 

This gives the ability to specify an additional argument to the path being generated for an object being passed. Traditionally, you'd have something like:  
  
    render @myObject  
  
which would only resolve to the path `myObject/_myObject`  

Using RenderVariant, we now have the ability to do:  

    render @myObject, :variant => :small  

which now points to the path `myObject/_myObject_small`, which could be useful to present @myObject in a bit more terse of style. 

---
### When can this be useful?

Using a variant path is useful where calling render on objects is common, but the objects have multiple 'variations'. Something like a search results page would illustrate this well, where you'd have:  
  
    <%= render @search_results %>
    
    <div id="related_results">
       <%= render @related_results %>
    </div>

In the case where you wanted to display the related results in a less prominent way, there isn't much you can do with the default options. The two collection renders are targeting the same partial, and there's nothing you can *cleanly* do about it. With the variant, you'd then have  

    <%= render @search_results %>
    
    <div id="related_results">
      <%= render @related_results, :variant => :preview %>
    </div>  



---
### Current Build status  
Tested in Rails 3 and 4.  

    
![alt text](https://travis-ci.org/alexanderross/render_variant.png "Build Status")
[repo]: http://github.com/alexanderross/render_variant