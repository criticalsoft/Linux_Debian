var Mode;
var CSS_;




function getElementSelector(el){
    let selector = el.tagName.toLowerCase();
    const attrs = el.attributes
    for (var i = 0; i < attrs.length; i++) {
        let attr = attrs.item(i)
        if (attr.name === 'id') selector += `#${attr.value}`;
        if (attr.name === 'class') selector += attr.value.split(' ').map((c) => `.${c}`).join('');
        if (attr.name === 'name') selector += `[${attr.name}=${attr.value}]`;
		// selector += `${attr.value}`;
    }
    return selector
}

function getElementStyle(oElm, strCssRule){
    var strValue = "";
    if(document.defaultView && document.defaultView.getComputedStyle){
        strValue = document.defaultView.getComputedStyle(oElm, "").getPropertyValue(strCssRule);
    }
    else if(oElm.currentStyle){
        strCssRule = strCssRule.replace(/\-(\w)/g, function (strMatch, p1){
            return p1.toUpperCase();
        });
        strValue = oElm.currentStyle[strCssRule];
    }
    return strValue;
}

function getPageCSS(){
	var css= [];

	for (var sheeti= 0; sheeti<document.styleSheets.length; sheeti++) {
		var sheet= document.styleSheets[sheeti];
		var rules= ('cssRules' in sheet)? sheet.cssRules : sheet.rules;
		for (var rulei= 0; rulei<rules.length; rulei++) {
			var rule= rules[rulei];
			if ('cssText' in rule)
				css.push(rule.cssText);
			else
				css.push(rule.selectorText+' {\n'+rule.style.cssText+'\n}\n');
		}
	}

	// return css.join('\n');
	return css;
}

function getWidth() {
return Math.max(
	document.body.scrollWidth,
	document.documentElement.scrollWidth,
	document.body.offsetWidth,
	document.documentElement.offsetWidth,
	document.documentElement.clientWidth
);
}

function getHeight() {
return Math.max(
	document.body.scrollHeight,
	document.documentElement.scrollHeight,
	document.body.offsetHeight,
	document.documentElement.offsetHeight,
	document.documentElement.clientHeight
);
}

function Remove_Background() {
	if (!document.body) return;
	if (document.body) {
		var Head = document.getElementsByTagName('head')[0];

		CSS_ = document.createElement('style');
		CSS_.setAttribute('type', 'text/css');
		CSS_.setAttribute('id', 'Falkon_Glass');

		// CSS_.innerHTML = `
		// 	html {
		// 		background-color: transparent !important;
		// 	}
		// 	body {
		// 		background-color: transparent !important;
		// 	}
		// `;

		// FIX: YouTube kevlar_global_styles Conflict
		// document.getElementsByTagName('html')[0].style.setProperty('background-color', 'transparent', 'important');
		// document.getElementsByTagName('body')[0].style.setProperty('background-color', 'transparent', 'important');
		document.querySelector('html').style.setProperty('background-color', 'transparent', 'important');
		document.querySelector('body').style.setProperty('background-color', 'transparent', 'important');




		// var All = document.body.getElementsByTagName('*');
		var All = document.body.querySelectorAll('*');
		// console.log(All.length);
		
		// console.log('MODE: ' + Mode);
		// var All = getCSS();
		// console.log(All);

		if(Mode == 0){
			// var css= [];
			// for (var sheeti= 0; sheeti<document.styleSheets.length; sheeti++) {
			// 	var sheet= document.styleSheets[sheeti];
			// 	var rules= ('cssRules' in sheet)? sheet.cssRules : sheet.rules;
			// 	for (var rulei= 0; rulei<rules.length; rulei++) {
			// 		var rule= rules[rulei];
			// 		if ('cssText' in rule){
			// 			console.log(rule.cssText);
			// 			css.push(rule.cssText);
			// 		} else {
			// 			console.log(rule.selectorText+' {\n'+rule.style.cssText+'\n}\n');
			// 			css.push(rule.selectorText+' {\n'+rule.style.cssText+'\n}\n');
			// 		}
			// 	}
			// }

			// for(element of All) {
			// 	// console.log(getElementSelector(element));
			// 	// console.log(CSS_.innerHTML.indexOf(getElementSelector(element)));

			// 	// console.log(element.style.getPropertyValue('color'));
			// 	// console.log(window.getComputedStyle(element).getPropertyValue('color'));
			// 	// console.log(getWidth(), getHeight());
			// 	var elW = window.getComputedStyle(element).getPropertyValue('width').replace('px','');
			// 	var elH = window.getComputedStyle(element).getPropertyValue('height').replace('px','');

			// 	if(elW + 100 >= getWidth()){
			// 	// var elBC = window.getComputedStyle(element).getPropertyValue('background-color');
			// 	// if(elBC == 'rgb(0, 0, 0)'){
			// 		CSS_.innerHTML += getElementSelector(element) + ` {
			// 			background-color: transparent !important;
			// 			/* background-color: rgba(0, 0, 0, 0.01) !important; */
					
			// 			/* Reddit */
			// 			--pseudo-before-background: transparent !important;
			// 		}`;
			// 	// }
			// 	}

			// 	// var elC = window.getComputedStyle(element).getPropertyValue('color');
			// 	// if(elC == 'rgb(0, 0, 0)'){
			// 	// if (getElementStyle(element, 'color')){
			// 	// if(getElementSelector(element)){
			// 		// element.style.setProperty('background-color', 'transparent', 'important');
			// 		// element.style.setProperty('color', '#FFFFFF', 'important');

			// 		// if(CSS_.innerHTML.indexOf(getElementSelector(element)) == -1){
			// 			// CSS_.innerHTML += getElementSelector(element) + ` {
			// 			// 	color: #FFFFFF !important;
			// 			// }`;
			// 		// }
			// 	// }
			// 	// }
			// }




			CSS_.innerHTML += `* {
				color: #FFFFFF !important;
				
				/* background-color: rgba(0, 0, 0, 0.01) !important; */
				background-color: transparent !important;

				/* FIX: ChatGPT */
				background-image: none !important;
			
				/* FIX: Reddit */
				--pseudo-before-background: transparent !important;
			}`;
		}

		if(Mode == 1){
			CSS_.innerHTML += `* {
				color: #000000 !important;
				
				/* background-color: rgba(0, 0, 0, 0.01) !important; */
				background-color: transparent !important;

				/* FIX: ChatGPT */
				background-image: none !important;
			
				/* FIX: Reddit */
				--pseudo-before-background: transparent !important;
			}`;
		}




		// console.log(CSS_);
		Head.appendChild(CSS_);
	}
}




function init() {
	Mode = external.extra.removeBackgroundObject.mode;

	Remove_Background();

	external.extra.removeBackgroundObject.onChange.connect(function(mode){
		// alert("WORKING: " + Mode);

		Remove_Background();
	})

	window.addEventListener('DOMContentLoaded', function() {
		Remove_Background();
	});
}

if (window._falkon_external) {
	init();
} else {
	document.addEventListener("_falkon_external_created", init);
}
