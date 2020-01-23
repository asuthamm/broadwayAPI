class NomineeSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipient

  def recipient
       self.object.name if self.object.recipient == true
  end
end
