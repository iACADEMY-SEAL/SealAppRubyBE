class RequestSerializer < ActiveModel::Serializer
  attributes :requester,:subject,:summary,:isChecked,:studentNumber,:category
end
