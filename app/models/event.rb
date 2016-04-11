class Event < ActiveRecord::Base

  #contraintes de validations pour être sûr que tous les champs seront remplis
  validates_presence_of :name, :email_organizer, :dateEvent, :description

  #contrainte de validation pour que la taille de la description ne soit pas supérieure à 300
  validates_length_of :description, maximum: 300

  #valide qu'il s'agit bien d'un email
  validates :email_organizer, format: { with: /\A.+@.+[.].{2,4}\z/, message: "Seulement les adresses email sont autorisées"}

end
