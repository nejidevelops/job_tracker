class Job < ApplicationRecord
    enum :status, { applied: "applied", interviewing: "interviewing", rejected: "rejected", offered: "offered", hired: "hired" }

    validates :title, presence: true
    validates :company, presence: true
    validates :status, presence: true, inclusion: { in: statuses.keys }

end
