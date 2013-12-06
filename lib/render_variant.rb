require 'rails'
module RenderVariant
  autoload :PartialVariantExtension, "render_variant/partial_variant_extension"
end

ActionView::PartialRenderer.send(:include,RenderVariant::PartialVariantExtension)