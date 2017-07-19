class Add<%= @lang.split("-").collect {|s| s.capitalize}.join %>StatusTranslationCenterTranslationKeys < ActiveRecord::Migration
  def change
    add_column :translation_center_translation_keys, :<%= @lang.underscore %>_status, :string, default: 'untranslated'

    add_index  :translation_center_translation_keys, :<%= @lang.underscore %>_status
  end
end
