=begin

TECSCDE - TECS Component Diagram Editor

Copyright (C) 2014-2015 by TOPPERS Project

 The above copyright holders grant permission gratis to use,
 duplicate, modify, or redistribute (hereafter called use) this
 software (including the one made by modifying this software),
 provided that the following four conditions (1) through (4) are
 satisfied.

 (1) When this software is used in the form of source code, the above
     copyright notice, this use conditions, and the disclaimer shown
     below must be retained in the source code without modification.

 (2) When this software is redistributed in the forms usable for the
     development of other software, such as in library form, the above
     copyright notice, this use conditions, and the disclaimer shown
     below must be shown without modification in the document provided
     with the redistributed software, such as the user manual.

 (3) When this software is redistributed in the forms unusable for the
     development of other software, such as the case when the software
     is embedded in a piece of equipment, either of the following two
     conditions must be satisfied:

   (a) The above copyright notice, this use conditions, and the
       disclaimer shown below must be shown without modification in
       the document provided with the redistributed software, such as
       the user manual.

   (b) How the software is to be redistributed must be reported to the
       TOPPERS Project according to the procedure described
       separately.

 (4) The above copyright holders and the TOPPERS Project are exempt
     from responsibility for any type of damage directly or indirectly
     caused from the use of this software and are indemnified by any
     users or end users of this software from any and all causes of
     action whatsoever.

 THIS SOFTWARE IS PROVIDED "AS IS." THE ABOVE COPYRIGHT HOLDERS AND
 THE TOPPERS PROJECT DISCLAIM ANY EXPRESS OR IMPLIED WARRANTIES,
 INCLUDING, BUT NOT LIMITED TO, ITS APPLICABILITY TO A PARTICULAR
 PURPOSE. IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS AND THE
 TOPPERS PROJECT BE LIABLE FOR ANY TYPE OF DAMAGE DIRECTLY OR
 INDIRECTLY CAUSED FROM THE USE OF THIS SOFTWARE.

 $Id: cell_plugin_dialog.rb 2640 2017-06-03 11:27:12Z okuma-top $

=end

module TECSCDE
  class CellPluginDialog
    #=== CellPluginDialog#initialize
    # cell::TmCell
    def initialize(cell)
      @cell = cell

      Dir.chdir("#{$tecsgen_base_path}/../glade"){
        setup
      }
    end

    def run
      @dialog.show_all
      @dialog.run{|response|
        p response
      }
      @dialog.destroy
    end

    def setup
      @builder = Gtk::Builder.new
      @builder.add_from_file "tecscde-cell-plugin.glade"

      @dialog = @builder["dialog_cell_plugin"]

      @label_cell_name = @builder["label_cell_name"]
      @label_cell_name.text = @cell.get_name.to_s

      @button_ok = @builder["button_ok"]
      @button_ok.signal_connect("clicked") {|me|
        @dialog.response Gtk::Dialog::RESPONSE_OK
      }

      @button_cancel = @builder["button_cancel"]
      @button_cancel.signal_connect("clicked") {|me|
        @dialog.response Gtk::Dialog::RESPONSE_CANCEL
      }
    end
  end
end
