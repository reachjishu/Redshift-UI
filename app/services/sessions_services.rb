class SessionsServices
  def new
  end

  def create
    response = RestClient.post(
                  'http://localhost:5000/api/login',
                  {
                    username: 'priyank@redshift.com',
                    password: '!abcd1234'
                  }
                )
    token = JSON.parse(response)["token"]
    return token
  end
end
