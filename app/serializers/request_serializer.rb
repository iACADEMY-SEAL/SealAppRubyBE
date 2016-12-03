class RequestSerializer < ActiveModel::Serializer
  attributes :requester,:subject,:summary,:isChecked,:studentNumber,:category,:created_at
end
