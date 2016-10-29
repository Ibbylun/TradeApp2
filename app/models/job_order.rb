class JobOrder < ApplicationRecord
  resourcify


  def self.search(search)
    where("teamId LIKE ?", "%#{search}%")
  end
  end
