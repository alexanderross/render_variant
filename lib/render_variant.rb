require 'rails'
module RenderVariant
  autoload :PartialVariantExtension, "render_variant/partial_variant_extension"
end

require 'render_variant/railtie'