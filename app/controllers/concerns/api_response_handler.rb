# module ApiResponseHandler
#   extend ActiveSupport::Concern

#   include do
#     # トップレベルが１個のオブジェクトのJSONレスポンスを返却する。
#     #
#     def response_with_serializer(status:, data:, serializer:)
#       render status: status, json: data, serializer: serializer
#     end

#         # トップレベルが複数(配列など)のオブジェクトのJSONレスポンスを返却する。
#     #
#     def response_with_each_serializer(status:, array:, serializer:)
#       options = { each_serializer: serializer }
#       data = ActiveModelSerializers::SerializableResource.new(array, options)
#       render status: status, json: data.as_json
#     end

#   end
# end
