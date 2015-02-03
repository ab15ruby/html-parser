class HTML_Parser
	def self.strip_tags(source)
		source.scan /<[\!\sa-zA-Z0-9]+>[\w\s\,\.\;\"\!\=\-çşığüöÇÖŞİÜĞ<>\/]+<\/[a-zA-Z0-9]+>/
	end
end

source = 
'<!DOCTYPE HTML>
<lang=en> <meta charset="utf-8">
<head>
	<title>Merhaba Dünya</title>
</head>
<body>
	<div>
		<h1>Bu bir başlıktır</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
</body>'

p HTML_Parser.strip_tags source
