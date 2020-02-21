class AddStatutsAndAcceptedToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :statut, :boolean, { default: false }
    add_column :bookings, :accepted, :string, { default: 'pending' }
  end
end
