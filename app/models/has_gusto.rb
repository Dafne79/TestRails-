class HasGusto < ApplicationRecord
  belongs_to :cliente
  belongs_to :gustos
end
