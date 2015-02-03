class Sorgulama

elemanlar = {}

	x.each do |tag|
	tag.to_s.gsub!(">", "").gsub!("<", "")
		unless tag.include? "/"
			elemanlar[tag.to_sym] = [] unless elemanlar[tag.to_sym]
			eleman = Regexp.new("<#{tag}(.*?)>(.*?)</#{tag}>", 4).match(source).to_a
			elemanlar[tag.to_sym] << eleman[2]
		end
 	end

end
p elemanlar[:h1]