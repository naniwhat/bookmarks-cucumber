class HomePage < SitePrism::Page
	set_url '/'

	element :keyword, '#se'
	element :totalNum, '#number'
	element :addItem, '#add_button'
	element :inputTitle, '#mark_name'
	element :inputUrl, '#mark_address'
	element :addBookmark, '#add_ok'

	#search
	def search content
		keyword.set content
		sleep 1
	end

	def searchResult
		sleep 2
		totalNum.text.to_i
	end
	#search

	#add item
	def addBookmarks title, url
		addItem.click
		inputTitle.set title
		inputUrl.set url
		addBookmark.click
		sleep 1
	end
	#add item
	
	#del item
	def delBookmarks content
		find('#del1449930755433').click
		find('.jBox-Confirm-button-submit').click
		sleep 1
	end
	#del item
	
end
