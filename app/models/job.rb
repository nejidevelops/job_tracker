class Job < ApplicationRecord
    validates :title, presence: true
    validates :company, presence: true

    enum :status, { applied: "applied", interviewing: "interviewing", rejected: "rejected", offered: "offered", hired: "hired" }
end
