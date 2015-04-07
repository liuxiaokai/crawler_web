class GetInfo < ActiveRecord::Base
  
	def get_conn(par)

	end

  def self.select_type
    case_type = []
    APP_CONFIG[:state_type].split(',').to_a.each do |value|
      case_type << [value,value]
    end
    case_type
  end

  def self.exc_crawler_procedure
  	pp "===========begin============="
  	url = "http://www.xiaochuncnjp.com/search.php?mod=forum&searchid=552&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=%E6%90%AC%E5%AE%B6"
    doc = Hpricot(open(url))

    cd = CharDet.detect(doc.to_s)
    pp encoding = cd["encoding"]
    # pp doc.inner_html

    # pp doc.search("ul/.pbw")
		doc.search("ul/.pbw").each do |item|
		  # pp timeStr = item.inner_html
		  # pp "************111111111"
		  pp titleStr = item.search("h3/a").inner_html
		  pp "********************titleStr"
		  pp urlStr = item.search("h3").inner_html.to_s.gsub(/href="/, 'href="http://www.xiaochuncnjp.com/')
		  pp "*********************urlStr"
		  pp contentStr = item.search("p")[1].inner_html
		  pp "***************************contentStr"
		 # break;
		  info = GetInfo.create!(title: titleStr, content: contentStr, url: urlStr) rescue nil
      if info.blank?
        next
      end	
		  
		end
		pp "************end***********"
  end

end
