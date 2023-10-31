class InsertPullquote < Liquid::Tag
    def initialize(tag_name, input, tokens)
        super
        @input = input
    end

    def render(context)
        output = "<p class='pullquote'>"
        output += @input
        output += "</p>"

        return output;
    end
end
Liquid::Template.register_tag('pullquote', InsertPullquote)