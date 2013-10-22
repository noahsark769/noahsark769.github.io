compile:
	lessc css/styles.less css/styles.css
	lessc css/styles-responsive.less css/styles-responsive.css
	lessc css/styles-responsive-small.less css/styles-responsive-small.css
	lessc css/styles-responsive-extra-small.less css/styles-responsive-extra-small.css
	jekyll build
