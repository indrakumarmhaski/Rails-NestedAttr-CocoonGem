class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy
    accepts_nested_attributes_for :tasks,
                                    reject_if: lambda { |attrs| attrs['title'].blank? },
                                    allow_destroy: true
end
