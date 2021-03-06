# app/graph/types/active_record_interface.rb

ActiveRecordInterface = GraphQL::InterfaceType.define do
  name "ActiveRecord"
  description "Active Record Interface"

  field :id, !types.ID

  field :updated_at do
    type types.String
    resolve -> (obj, args, ctx) {
      obj.updated_at
    }
  end

  field :created_at do
    type types.Int
    resolve -> (obj, args, ctx) {
      obj.created_at.to_i
    }
  end
end