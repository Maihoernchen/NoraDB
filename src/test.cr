# Test for Misc stuff



# Testing fibres (Crystals approach to concurrency)
spawn do
    # ...
    loop do
        puts "Hello!"
    end
    # ...
  end
  
  sleep 1.seconds

  spawn do
    # ...
    sleep 5.seconds
    #  ...
  end