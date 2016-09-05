require 'addressable/uri'
require 'rest-client'
require 'byebug'

def index_users
    url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users.html',
      query_values: {
        'users[test_key]' => 'test value',
        'users[quesadilla]' => 'delicious',
        'users[cheese][cheddar]' => 'orange'
      }
    ).to_s

    puts RestClient.get(url)
end

def create_user(name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
    response = RestClient.post(
      url,
      { user: { name: name, email: email } }
    )
    puts response
  rescue RestClient::Exception => e
    puts "You messed up"
    puts e.response
  end

end



def create_share(contact_id, user_id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contact_shares.json'
  ).to_s

  begin
    response = RestClient.post(
      url,
      { contact_share: { contact_id: contact_id, user_id: user_id } }
    )
    puts response
  rescue RestClient::Exception => e
    puts "You messed up"
    puts e.response
  end

end


create_share(18, 22)
