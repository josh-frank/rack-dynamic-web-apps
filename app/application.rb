class Application

  def call(env)
    resp = Rack::Response.new
    one = Kernel.rand( 1..7 )
    two = Kernel.rand( 1..7 )
    three = Kernel.rand( 1..7 )
    resp.write "#{ one }\n"
    resp.write "#{ two }\n"
    resp.write "#{ three }\n"
    if one == two && two == three
      resp.write "You Win"
    else
      resp.write "You Lose"  
    end
    resp.finish
  end

end
