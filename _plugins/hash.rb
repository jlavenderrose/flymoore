module Jekyll

  module HashFilter

    def key input
      input[0]
    end

    def value input
      input[1]
    end

  end

end

Liquid::Template.register_filter Jekyll::HashFilter