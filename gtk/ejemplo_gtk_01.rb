require 'gtk2'

  button=Gtk::Button.new("Hello World")
  button.signal_connect("clicked"){
    puts "Hello World"
  }
  
  window=Gtk::Window.new
  window.signal_connect("delete_event"){
    puts "delete event ocurred"
    false
  }
  window.signal_connect("destroy"){
    puts "destroy event ocurred"
    Gtk.main_quit
  }
  
  window.border_width=10
  window.add(button)
  window.show_all
  
  Gtk.main
