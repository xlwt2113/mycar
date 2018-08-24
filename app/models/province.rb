class Province < ActiveRecord::Base

	validates :name, length: { maximum: 1,message: "内容太长" }
end
