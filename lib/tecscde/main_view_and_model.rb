=begin

TECSCDE - TECS Component Diagram Editor

Copyright (C) 2014-2019 by TOPPERS Project

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

=end

module TECSCDE
  class MainViewAndModel
    # @model::TECSModel
    # @view::TECSCDE::View::MainView
    def initialize(tecsgen)
      @model   = TECSModel.new tecsgen
      @control = Control.new @model
      @view    = TECSCDE::View::MainView.new @model, @control
      @control.set_view @view
      @model.set_view @view

      @model.add_cell_list_from_tecsgen
      @model.set_undo_point

      @view.paint_canvas
    end

    def get_model
      @model
    end

    def test_main
      p "test_main"
      cell1 = @model.new_cell(0, 0)
      cell2 = @model.new_cell(100, 100)

      cport = TECSModel::TmCPort.new cell1
      eport = TECSModel::TmEPort.new cell2

      join = @model.new_join(cport, eport)
      # p join
      # Gtk::main()
    end
  end
end
