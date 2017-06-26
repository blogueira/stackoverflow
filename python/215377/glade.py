#!/usr/bin/python3
# coding: utf-8

import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk


class InverterApp():
    def __init__(self):

        builder = Gtk.Builder()
        builder.add_from_file("Inverter.glade")

    #Obter a janela principal
        self.window = builder.get_object("window1")

    # Obtendo o widget text_entry (a área de texto do nosso programa) pois
    # iremos utiliza-la nas funções de inversão da URL e para adicionar o a
    # URL já invertida
        self.text_area = builder.get_object("text_entry")

    # Obtendo o widget about_dialog (janelinha com as informações do programa)
        self.about = builder.get_object("about_dialog")

    #Exibe a janela do programa
        self.window.show_all()

        builder.connect_signals({"gtk_main_quit": Gtk.main_quit,
                            "on_button_invert_clicked": self.invert_url,
                            "on_text_entry_activate": self.invert_url,
                            "on_copy_activate": self.copy_text,
                            "on_paste_activate": self.paste_text,
                            "on_delete_activate": self.delete_text,
                            "on_about_activate": self.about_window,
                                 })


    def invert_url(self, widget):

        url = self.text_area.get_text()

        url = url[::-1]

        self.text_area.set_text(url)

    def copy_text(self, widget):
        clipboard = Gtk.clipboard_get()

        url = self.text_area.get_text()

        clipboard.set_text(url)

        clipboard.store()


    def paste_text(self, widget):
        clipboard = Gtk.clipboard_get()

        url = clipboard.wait_for_text()

        self.text_area.set_text(url)



    def delete_text(self, widget):

        self.text_area.set_text("")

    def about_window(self, widget):

        self.about.run()
        self.about.hide()


if __name__ == "__main__":
    app = InverterApp()
    Gtk.main()
