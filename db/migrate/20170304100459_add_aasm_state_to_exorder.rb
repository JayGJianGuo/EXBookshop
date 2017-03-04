class AddAasmStateToExorder < ActiveRecord::Migration[5.0]
  def change
    add_column :exorders, :aasm_state, :string, default: "exorder_wating_check"
    add_index  :exorders, :aasm_state
  end
end
