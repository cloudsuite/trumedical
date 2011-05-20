$(document).ready(function(){
		
		/* Copyright (c) 2008 Stu Nichols - stunichols.com - all rights reserved. */
		
		/* start by hiding the uL and closing each li that contains a subordinate ul */
		$("#nav ul").hide();
		$("#nav li:has(ul)").each(function() {
			$(this).children().slideUp(400);
		});
		/* if there is a li.p1 with the class "selected', then open it
			if there is a 2nd level menu item within this that also has the class 'selected', then open it
			if there is a 3rd level menu item within the 2nd level one just opened that also has the 
			 	class 'selected', then open it. 
		*/
		
		/* DEBUG: close to working; check: have highlighted 3 levels within _leftnav.html.erb 
			Why is 'Tubular Buffs' orange (and larger font?), not still white, or red? 
		*/
		$("#nav li.selected").each(function(){
			$(this).children().slideDown(400).css( { 'color': 'red' });
		});
		/* alternatively, add 'selected' only to leaf-level in nav and highlight everything
		above it back up the tree */ 
		
		
		/* if a click event is raised on a 1st level menu with descendents
			if <? I don't understand the condition; how could this not be the target of the event raised?>
				for each li within an __ with id #nav that has a sublist, 
					close any other p1 currently open
			toggle both this menu item and the ul that it contains, opening or closing it 
		*/
		$("li.p1:has(ul)").click(function(event){
			if (this == event.target) {
				var current = this;
				$("#nav li:has(ul)").each(function() {
					if (this != current) $(this).children().slideUp(400);
				});
			$("ul:first", $(this)).slideToggle(400);
			}
		});
		
		/*
			If a click even is raised on a 2nd or 3rd level menu item with descendants
			if <?>
				close any other p2 or p3 currently open
				open or close this menu item
		*/
		$("li.p2:has(ul)").click(function(event){
			if (this == event.target) {
				var current = this;
				$("li.p2:has(ul)").each(function() {
					if (this != current) $(this).children().slideUp(400);
				});
				$("li.p3:has(ul)").each(function() {
					if (this != current) $(this).children().slideUp(400);
				});
				$("ul:first", $(this)).slideToggle(400);
			}
		});
		
		/* 
			If a click event is raised on a 3rd level menu item that has descendants
				close any other 3rd level items currently open
				toggle the item clicked: either opening or closing it
		*/
		$("li.p3:has(ul)").click(function(event){
			if (this == event.target) {
				var current = this;
				$("li.p3:has(ul)").each(function() {
					if (this != current) $(this).children().slideUp(400);
				});
				$("ul:first", $(this)).slideToggle(400);
			}
		});

});