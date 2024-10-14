lgi = require 'lgi'
gtk = lgi.Gtk
gtk.init()
bld = gtk.Builder()
bld:add_from_file('Lab_02_Golodnikova.grade')
ui=bld.objects
ui.wnd.title = 'lab-02'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()
gtk.main()

function ui.Add:on_clicked(...)
	a = tonumber(ui.windowA.text)
	b = tonumber(ui.windowB.text)
	ui.result.label = a + b
end

function ui.Substract:on_clicked(...)
	a = tonumber(ui.windowA.text)
	b = tonumber(ui.windowB.text)
	ui.result.label = a - b
end

function ui.Multiply:on_clicked(...)
	a = tonumber(ui.windowA.text)
	b = tonumber(ui.windowB.text)
	ui.result.label = a * b
end

function ui.Divide:on_clicked(...)
	a = tonumber(ui.windowA.text)
	b = tonumber(ui.windowB.text)
	ui.result.label = a / b
end
