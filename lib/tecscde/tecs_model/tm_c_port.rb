#
# TECSCDE - TECS Component Diagram Editor
#
# Copyright (C) 2014-2019 by TOPPERS Project
#
#  The above copyright holders grant permission gratis to use,
#  duplicate, modify, or redistribute (hereafter called use) this
#  software (including the one made by modifying this software),
#  provided that the following four conditions (1) through (4) are
#  satisfied.
#
#  (1) When this software is used in the form of source code, the above
#      copyright notice, this use conditions, and the disclaimer shown
#      below must be retained in the source code without modification.
#
#  (2) When this software is redistributed in the forms usable for the
#      development of other software, such as in library form, the above
#      copyright notice, this use conditions, and the disclaimer shown
#      below must be shown without modification in the document provided
#      with the redistributed software, such as the user manual.
#
#  (3) When this software is redistributed in the forms unusable for the
#      development of other software, such as the case when the software
#      is embedded in a piece of equipment, either of the following two
#      conditions must be satisfied:
#
#    (a) The above copyright notice, this use conditions, and the
#        disclaimer shown below must be shown without modification in
#        the document provided with the redistributed software, such as
#        the user manual.
#
#    (b) How the software is to be redistributed must be reported to the
#        TOPPERS Project according to the procedure described
#        separately.
#
#  (4) The above copyright holders and the TOPPERS Project are exempt
#      from responsibility for any type of damage directly or indirectly
#      caused from the use of this software and are indemnified by any
#      users or end users of this software from any and all causes of
#      action whatsoever.
#
#  THIS SOFTWARE IS PROVIDED "AS IS." THE ABOVE COPYRIGHT HOLDERS AND
#  THE TOPPERS PROJECT DISCLAIM ANY EXPRESS OR IMPLIED WARRANTIES,
#  INCLUDING, BUT NOT LIMITED TO, ITS APPLICABILITY TO A PARTICULAR
#  PURPOSE. IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS AND THE
#  TOPPERS PROJECT BE LIABLE FOR ANY TYPE OF DAMAGE DIRECTLY OR
#  INDIRECTLY CAUSED FROM THE USE OF THIS SOFTWARE.
#

require "tecscde/tecs_model/tm_port"

module TECSCDE
  class TECSModel
    # mikan cp array
    class TmCPort < TECSCDE::TECSModel::TmPort
      # @join::TmJoin

      def initialize(owner, port_def, subscript = nil)
        # p "port_def::#{port_def.get_name}  #{port_def.class}"
        @port_def = port_def
        @owner = owner
        @join = nil
        @subscript = subscript
        # p "subscript=#{subscript}"

        @name = "cCport" # temporal
        @edge_side, @offset = get_cell.get_new_cport_position(port_def)
        modified {}
      end

      def set_join(join)
        modified do
          @join = join
        end
      end

      def moved(x_inc, y_inc)
        return unless @join
        @join.moved_cport(x_inc, y_inc)
      end

      def get_join(subscript = nil)
        @join
      end

      #=== TmCPort#delete
      # this method is called from TmCell
      def delete
        return unless @join
        modified do
          @join.delete
          @join = nil
        end
      end

      #=== TmCPort#delete_join
      # this method is called from TmJoin
      def delete_join
        modified do
          @join = nil
        end
      end

      #=== TmCPort#complete?
      def complete?
        @join ? true : false
      end

      #=== TmCPort#optional?
      def optional?
        @port_def.is_optional?
      end

      #=== TmCPort#clone_for_undo
      def clone_for_undo
        bu = clone
        bu.copy_from(self)
        bu
      end
    end
  end
end
