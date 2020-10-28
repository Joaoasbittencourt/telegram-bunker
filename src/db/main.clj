(ns db.main
  (:require [hugsql.core :as hugsql]))

(def config
  {:classname "org.postgresql.Driver"
   :subprotocol "postgresql"
   :subname "//localhost:5432/telegram_bunker"
   :user "postgres"
   :password "postgres"})

(hugsql/def-db-fns "notes.sql")

(defn createTables []
  (println "Creating  Notes Table")
  (create-notes-table config))
