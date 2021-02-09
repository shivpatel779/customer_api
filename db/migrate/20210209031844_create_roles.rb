class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :role_name, null: false, index: { unique: true }
      t.string :role_code, null: false, index: { unique: true }
      t.timestamps
    end
    roles = ['Customer', 'Branch Manager']
    roles.each do |role|
      Role.create(role_name: role, role_code: role)
    end 	
  end
end
