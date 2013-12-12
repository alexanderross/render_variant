module RenderVariant
  module PartialVariantExtension
    extend ActiveSupport::Concern
    included do
      alias_method_chain :setup, :variant
    end

    def setup_with_variant(context, options, block)
      initial_setup = setup_without_variant(context, options, block)
      return self unless @path
      variant = if(options[:variant])
                  options[:variant]
                elsif(options[:locals] && options[:locals][:variant])
                  options[:locals][:variant]
                end
      @path += "_" + variant.to_s if variant

      self
    end
  end
end