# namespace :crawler do 
#   desc "Prints info about url"
#   task :get_infos => :environment do 
#     time_start     = Time.now
#     GetInfo.connection
#     # (1..74).each do |_id|
# 	    url = "http://www.xiaochuncnjp.com/search.php?mod=forum&searchid=552&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=%E6%90%AC%E5%AE%B6"
# 	    doc = Nokogiri::HTML(open(url))
# 	    doc.xpath("//div[@id='threadlist']/li").each do |_line|
# 	    	li_id = _line.id
#         topic_title   = _line.xpath("//li[@id='#{li_id}']/h3/a")
# 	      topic_url     = topic_title["href"]
# 	      topic_content = _line.xpath("//li[@id='#{li_id}']/p")
# 	      # right_info_path = "//div[@class='#{topic_class}']/div[@class='right-info']"
# 	      # topic_path      = right_info_path +"/div[@class='pull-right replies']/a"

# 	      # up =  doc.xpath(topic_path).text
# 	      # up =  0 if up.empty?

# 	      # 获取标题
# 	      # title_path      = right_info_path + "/div[@class='infos']/div[@class='title']/a"
# 	      # title           = doc.xpath(title_path)[0]['title']

# 	      # 获取url
# 	      # url_suffix      = doc.xpath(title_path)[0]['href']
# 	      # url             = "https://ruby-china.org/#{url_suffix}"
# 	      # area            = cal_area(title)

# 	      job             = GetInfo.create!(title: topic_title, content: topic_content, url: topic_url)

# 	      puts "#{topic_title}"
# 	    end
#   end

# 	time_end   = Time.now
# 	puts "rake 执行完毕！耗时#{ time_end - time_start }秒" 

# end