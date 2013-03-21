function Common() {
	var self = this;
	
	$.extend(self, {		
	
		//initializes JobHistory class
		init: function() {			
			self.registerEvents();
			self.setMinHeight();					
		},
		
		//register event listeners		
		registerEvents: function() {			
			$('.manage').mouseover(self.showAdminPanel);
			$('.manage').mouseout(self.hideAdminPanel);
		},

		showAdminPanel: function() {
			$('.adminPanel').show();
		},

		hideAdminPanel: function() {
			$('.adminPanel').hide();
		},

		//set the min height for webpage to keep footer at the bottom.
		setMinHeight: function() {
			var height = $(window).height();
			$('#leftContent').css('min-height', height + 'px');
			$('#rightContent').css('min-height', height + 'px');  
		}
		
	});
	
	self.init()
};

var common;
 
$(document).ready(function() {
	common = new Common();
});
