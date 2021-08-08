## Agh jekyll sucks. why cant i just make these in the damn template file like in ERB or PHP
# @context.registers[:site].config

module MyFilters
  def myfilter(x)
    "hiyo"
  end
  
  def personfilter(person)
    # puts "ATTRS"
    # p @attributes
    # puts "CTX"
    # p @context.registers[:site].config
    cc = @context.registers[:site].config
    imgsrc = "#{cc['url']}/#{cc['baseurl']}/assets/img/#{person['image']}"
    imgsrc = ""
    out = %{
      <div id = "#{person['name'].gsub(" ","-")}" class="col-sm-3" style="margin:0 auto">
        <div style="margin:0 auto">
            <center>
            <img style="max-width:120px; padding-left: 5px; padding-right:5px;" 
              src="#{imgsrc}" alt="photo of #{person['name']}">
            <p style="text-align:center">

                {% if person.website %}
                  <a href= "{{person.website}}" target="_blank">{{person.name}}</a>
                {% else %}
                  {{person.name}}
                {% endif %}
                <br>
                {% if person.website %} <a href= "{{person.website}}" target="_blank"><i class="fa fa-globe"></i></a> {% endif %}
                {% if person.email %} <a href="mailto:{{person.email}} target="_blank"><i class="fa fa-envelope"></i></a> {% endif %}
                {% if person.twitter %} <a href= "http://twitter.com/{{person.twitter}}" target="_blank"><i class="fab fa-twitter"></i></a> {% endif %}
                    
            </p>
            
            </center>
        </div>
    </div>
    }
    out
  end
end

Liquid::Template.register_filter(MyFilters)


# class MyTag < Liquid::Tag
# 
#   # http://www.developwith.com/how-do-i/ruby/custom-tag-with-attributes-in-jekyll/
#     def initialize(tag_name, markup, tokens)
#       super
#       @attributes = {}
#       markup.scan(::Liquid::TagAttributes) do |key, value|
#         @attributes[key] = value
#       end
#       @markup = markup
#     end
#   
# 
#   def render(context)
#     # imgsrc = "#{site.url}/#{site.baseurl}/assets/img/#{person.image}"
#     p @attributes
#     person = @attributes['person']
#     imgsrc = ""
#     out = %{
#       <div id = "#{person['name'].gsub(" ","-")}" class="col-sm-3" style="margin:0 auto">
#         <div style="margin:0 auto">
#             <center>
#             <img style="max-width:120px; padding-left: 5px; padding-right:5px;" 
#               src="#{imgsrc}" alt="photo of #{person['name']}">
#             <p style="text-align:center">
# 
#                 {% if person.website %}
#                   <a href= "{{person.website}}" target="_blank">{{person.name}}</a>
#                 {% else %}
#                   {{person.name}}
#                 {% endif %}
#                 <br>
#                 {% if person.website %} <a href= "{{person.website}}" target="_blank"><i class="fa fa-globe"></i></a> {% endif %}
#                 {% if person.email %} <a href="mailto:{{person.email}} target="_blank"><i class="fa fa-envelope"></i></a> {% endif %}
#                 {% if person.twitter %} <a href= "http://twitter.com/{{person.twitter}}" target="_blank"><i class="fab fa-twitter"></i></a> {% endif %}
#                     
#             </p>
#             
#             </center>
#         </div>
#     </div>
#     }
#     out
#   end
# end
# 
# Liquid::Template.register_tag('persontag', MyTag)
# 
