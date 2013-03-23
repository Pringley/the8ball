require 'sinatra'
require 'haml'

$phrases = ["Yes, in due time.", "My sources say no.", "Definitely not.",
    "Yes.", "You will have to wait.", "I have my doubts.", "Outlook so so.",
    "Looks good to me!", "Who knows?", "Looking good!", "Probably.",
    "Are you kidding?", "Go for it!", "Don't bet on it.", "Forget about it."]

get '/' do
    haml :eightball
end

post '/' do
    @result = true
    haml :eightball
end

__END__

@@ eightball
%html
    %body
        %h1 #{ @result ? $phrases.sample : "Shake me!" }
        %img{ :src => "http://web.ics.purdue.edu/~ssanty/images/8ball2.gif" }
        %form{ :action => "", :method => "post" }
            %input{ :type => "submit", :value => "Shake!" }
