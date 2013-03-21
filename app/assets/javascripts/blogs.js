function Blog() {
	var self = this;
	
	$.extend(self, {		
	
		//initializes JobHistory class
		init: function() {			
			self.registerEvents();
			self.showDemo();					
		},
		
		//register event listeners		
		registerEvents: function() {			
			$('#blog_body').blur(self.showDemo);
		},

		showDemo: function() {
			var demoHtml = $('#blog_body').val();
			$('.demoBody').html(demoHtml);
		}
		
	});

	self.init()
};

var blog;
 
$(document).ready(function() {
	blog = new Blog();
});
