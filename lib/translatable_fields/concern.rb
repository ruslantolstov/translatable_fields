require "active_support/concern"

module TranslatableFields
  module Concern
    extend ActiveSupport::Concern

    included do
      def field_prefix(field)
        if TranslatableFields.config.mode&.to_sym == :prefix_at_the_beginning
          "#{I18n.locale}_#{field}"
        else
          "#{field}_#{I18n.locale}"
        end
      end
    end

    class_methods do
      def translatable_fields(*fields)
        fields.each do |field|
          define_method(field) do
            public_send(field_prefix(field))
          end
        end
      end
    end
  end
end
