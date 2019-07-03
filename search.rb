require 'rest-client'

def search 
    puts "Enter Bing search query:"
    input = gets.chomp

    response = RestClient.get 'https://www.bing.com/search', 
                               {params: {'q' => input}}

    puts "Code:"
    puts response.code

    puts "Cookies:"
    puts response.cookies

    puts "Headers:"
    puts response.headers

    puts "Body:"
    puts response.body

    puts "URL:"
    puts response.request.url
end

search
