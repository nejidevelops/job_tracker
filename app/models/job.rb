class Job < ApplicationRecord
    validates :title, presence: true
    validates :company, presence: true
    validates :status, presence: true, inclusion: { in: statuses.keys }

    enum :status, { applied: "applied", interviewing: "interviewing", rejected: "rejected", offered: "offered", hired: "hired" }
end
