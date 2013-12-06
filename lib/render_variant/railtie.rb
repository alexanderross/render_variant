module CacheDebugging
  class Railtie < Rails::Railtie
    initializer "render_variant.setup" do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::PartialRenderer.send(:include,RenderVariant::PartialVariantExtension)
      end
    end
  end
end