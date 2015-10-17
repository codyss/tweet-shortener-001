def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  atweet = tweet.split
  atweet.collect do |x|
    if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
    else
      x
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |x|
      puts word_substituter(x)
    end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0...137]+"..."
  else
    tweet
  end
end 

