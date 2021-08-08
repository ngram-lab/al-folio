## BTO:
# You have to manually restart the "jekyll serve" server after changing this file.
# Agh jekyll sucks.
# This is Ruby code so uses Ruby syntax for string interpolation, string substitution and all that.
# This is usually not the same as Liquid templating language that Jekyll uses in _pages pages.
#
module MyFilters
  def myfilter(x)
    "hiyo"
  end
  
  def personfilter(person)

    # puts "CTX"
    # p @context.registers[:site].config

    ## https://stackoverflow.com/questions/11410611/get-jekyll-configuration-inside-plugin
    ## refers to dead wiki page, wtf dudes
    cc = @context.registers[:site].config
    # p cc

    imgsrc = person['image'] ? 
      "#{cc['baseurl']}/assets/img/#{person['image']}" :
      "#{cc['baseurl']}/assets/img/blank.png"
    out = %{
      <div id = "#{person['name'].gsub(" ","-")}" class="col-sm-3" style="margin:0 auto">
        <div style="margin:0 auto">
            <center>
            <img style="max-width:150px; max-height: 150px; padding-left: 5px; padding-right:5px;" 
              src="#{imgsrc}" alt="photo of #{person['name']}">
            <p style="text-align:center">
    }
    if person['website']
      out += %{<a href= "#{person['website']}" target="_blank">#{person['name']}</a>}
    else
      out += person['name']
    end
    out += "<br>"
    if person['website']
      out += %{ <a href= "#{person['website']}" target="_blank"><i class="fa fa-globe"></i></a>}
    end
    if person['twitter'] 
      out += %{ <a href= "http://twitter.com/#{person['twitter']}" target="_blank"><i class="fab fa-twitter"></i></a>}
    end
    if person['email'] 
      out += %{ <a href="mailto:#{person['email']}" target="_blank"><i class="fa fa-envelope"></i></a>}
    end

    out += %{
            </p>
            </center>
        </div>
    </div>
    }
    out
  end
end

Liquid::Template.register_filter(MyFilters)

