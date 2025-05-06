(function() {

	'use strict';

	const ClickyMenus = function( menu ) {

		// DOM element(s)
		let	container = menu.parentElement,
			currentMenuItem,
			i,
			len;

		this.init = function( i ) {
			menuSetup( i );
			document.addEventListener( 'click', closeOpenMenu );
		}


		/*===================================================
		=            Menu Open / Close Functions            =
		===================================================*/
		function toggleOnMenuClick( e ) {

			const button = e.currentTarget;

			// close open menu if there is one
			if ( currentMenuItem && button !== currentMenuItem ) {
				toggleSubmenu( currentMenuItem );
			}

			toggleSubmenu( button );

		};

		function toggleSubmenu( button ) {

			const submenu = document.getElementById( button.getAttribute( 'aria-controls' ) );

			if ( 'true' === button.getAttribute( 'aria-expanded' ) ) {

				button.setAttribute( 'aria-expanded', false );
				submenu.setAttribute( 'aria-hidden', true );
				currentMenuItem = false;

			} else {

				button.setAttribute( 'aria-expanded', true );
				submenu.setAttribute( 'aria-hidden', false );
				preventOffScreenSubmenu( submenu );
				currentMenuItem = button;

			}

		};

		function preventOffScreenSubmenu( submenu ) {

			const 	screenWidth =	window.innerWidth ||
									document.documentElement.clientWidth ||
									document.body.clientWidth,
					parent = submenu.offsetParent,
					menuLeftEdge = parent.getBoundingClientRect().left,
					menuRightEdge = menuLeftEdge + submenu.offsetWidth;

			if ( menuRightEdge + 32 > screenWidth ) { // adding 32 so it's not too close
				submenu.classList.add( 'sub-menu--right' );
			}

		}

		function closeOnEscKey( e ) {

			if(	27 === e.keyCode ) {

				// we're in a submenu item
				if( null !== e.target.closest('ul[aria-hidden="false"]') ) {
					currentMenuItem.focus();
					toggleSubmenu( currentMenuItem );

				// we're on a parent item
				} else if ( 'true' === e.target.getAttribute('aria-expanded') ) {
					toggleSubmenu( currentMenuItem );
				}

			}

		}

		function closeOpenMenu( e ) {

			if ( currentMenuItem && ! e.target.closest( '#' + container.id ) ) {
				toggleSubmenu( currentMenuItem );
			}

		};

		/*===========================================================
		=            Modify Menu Markup & Bind Listeners            =
		=============================================================*/
		function menuSetup( i ) {

			menu.classList.remove('no-js');

			/* if parent of menu has no ID, give it one */
			if( menu.parentElement.id === '' ) {
				menu.parentElement.id = 'clicky-menu-' + i;
			}

			menu.querySelectorAll('ul').forEach( ( submenu ) => {

				const menuItem = submenu.parentElement;

				if ( 'undefined' !== typeof submenu ) {

					let button = convertLinkToButton( menuItem );

					setUpAria( submenu, button, i );

					// bind event listener to button
					button.addEventListener( 'click', toggleOnMenuClick );
					menu.addEventListener( 'keyup', closeOnEscKey );

				}

			});

		};

		/**
		 * Why do this? See https://justmarkup.com/articles/2019-01-21-the-link-to-button-enhancement/
		 */
		function convertLinkToButton( menuItem ) {

			const 	link = menuItem.getElementsByTagName( 'a' )[0],
					linkHTML = link.innerHTML,
					linkAtts = link.attributes,
					button = document.createElement( 'button' );

			if( null !== link ) {

				// copy button attributes and content from link
				button.innerHTML = linkHTML.trim();
				for( i = 0, len = linkAtts.length; i < len; i++ ) {
					let attr = linkAtts[i];
					if( 'href' !== attr.name ) {
						button.setAttribute( attr.name, attr.value );
					}
				}

				menuItem.replaceChild( button, link );

			}

			return button;

		}

		function setUpAria( submenu, button, i ) {

			const submenuId = submenu.getAttribute( 'id' );

			let id;
			if( null === submenuId ) {
				id = button.textContent.trim().replace(/\s+/g, '-').toLowerCase() + '-submenu-' + i;
			} else {
				id = menuItemId + '-submenu-' + i;
			}

			// set button ARIA
			button.setAttribute( 'aria-controls', id );
			button.setAttribute( 'aria-expanded', false );

			// set submenu ARIA
			submenu.setAttribute( 'id', id );
			submenu.setAttribute( 'aria-hidden', true );

		}

	}

	/* Create a ClickMenus object and initiate menu for any menu with .clicky-menu class */
	document.addEventListener('DOMContentLoaded', function(){
		const menus = document.querySelectorAll( '.clicky-menu' );
		let i = 1;

		menus.forEach( menu => {

			let clickyMenu = new ClickyMenus(menu);
			clickyMenu.init(i);
			i++;

		});
	});

}());


(()=>{let t;function e(t){t&&t.shown&&(t.style.display='none',t.shown=!1)}function n(t){const e=c(t);if(!e||!e.datalist)return;const n=e.value.trim().toLowerCase();Array.from(e.datalist.getElementsByTagName('option')).forEach((t=>{t.setAttribute('tabindex',0),t.style.display=!n||t.value.toLowerCase().includes(n)?'block':'none'}))}function i(t){const n=c(t);if(n&&n.datalist)switch(t.keyCode){case 40:{let t=n.datalist.firstElementChild;t.offsetHeight||(t=a(t,1)),t&&t.focus();break}case 9:e(n.datalist);break;case 13:case 32:l(t)}}document.body.addEventListener('focusin',(function(s){const a=c(s);if(!a)return;if(a.list){const t=a.list;a.datalist=t,a.removeAttribute('list'),t.input=a,t.setAttribute('tabindex',-1),a.addEventListener('input',n),a.addEventListener('keydown',i),t.addEventListener('keydown',o),t.addEventListener('click',l)}const r=a.datalist;r&&!r.shown&&(e(t),r.shown=!0,n(s),r.style.width=a.offsetWidth+'px',r.style.left=a.offsetLeft+'px',r.style.display='block',t=r)}));const s={33:-12,34:12,38:-1,40:1};function o(t){const n=c(t);if(!n)return;const i=t.keyCode,o=s[i],r=n.parentElement;if(o){let e=a(n,o);e&&e.focus(),t.preventDefault()}else 9===i||13===i||32===i?l(t):8===i?r.input.focus():27===i&&e(r)}function a(t,e){let n=t;do{e<0?n=n.previousElementSibling:e>0&&(n=n.nextElementSibling),n&&n.offsetHeight&&(t=n,e-=Math.sign(e))}while(n&&e);return t}function l(t){const n=c(t),i=n&&n.parentElement;i&&i.input&&(i.input.value=n&&n.value||'',e(i))}function c(t){return t&&t.target}})();