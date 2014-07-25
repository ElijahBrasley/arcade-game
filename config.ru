use Rack::Static,
  :urls => ["/assets"],
  :root => "public"

map "/" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=3600' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
end

map "/wrestlejump" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/wrestlejump.html', File::RDONLY)
  ]
}
end

map "/shooting" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/shooting.html', File::RDONLY)
  ]
}
end