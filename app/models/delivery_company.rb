class DeliveryCompany < ApplicationRecord
  enum contractor: { yamato: 0, sagawa: 1, japan_post: 2, tmg: 3 }
end
