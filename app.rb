html = File.read('data.txt').gsub('[[size]]', 'photo')

urls = html.scan(/url&quot;:&quot;(.*?)\?/)

urls.each do |i|
  `wget #{i[0]}`
end
