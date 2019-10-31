class I18n
  def available_locales; end
end

describe TranslatableFields::Concern do
  before do
    allow(I18n).to receive(:available_locales).and_return([:en]);
    allow(I18n).to receive(:locale).and_return("en")
  end

  let(:class_with_translatable_fields) do
    Class.new do
      include TranslatableFields::Concern

      translatable_fields :name

      I18n.available_locales.each do |locale|
        define_method "name_#{locale}" do
          "name_#{locale}"
        end
      end

      def en_name
        "en_name"
      end

      def name_en
        "name_en"
      end
    end
  end

  let(:object) { class_with_translatable_fields.new }

  context "prefix_at_the_beginning mode" do
    it "returns en version" do
      expect(object.name).to eq("en_name")
    end
  end

  context "prefix_in_the_end mode" do
    before do
      allow(TranslatableFields.config).to receive(:mode).and_return(:prefix_in_the_end)
    end

    it "returns en version" do
      expect(object.name).to eq("name_en")
    end
  end
end
