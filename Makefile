install: linuxtranslate_ui-mk.mo
	install linuxtranslate linuxtranslate_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat linuxtranslate.services`" /etc/services || cat linuxtranslate.services >> /etc/services
	install linuxtranslate.xinetd /etc/xinetd.d/linuxtranslate
	#ln -sf /usr/local/bin/calc_ui /usr/local/bin/ncalc_ui
	install linuxtranslate_ui-mk.mo /usr/share/locale/mk/LC_MESSAGES/linuxtranslate_ui.mo

linuxtranslate_ui.pot: linuxtranslate_ui
	xgettext -o linuxtranslate_ui.pot -L Shell linuxtranslate_ui

linuxtranslate_ui-mk.mo: linuxtranslate_ui-mk.po
	msgfmt -o linuxtranslate_ui-mk.mo linuxtranslate_ui-mk.po

clone:
	#git clone https://github.com/itmo-infocom/calc_examples.git

download:
	#git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
