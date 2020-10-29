(ns notes.db
  (:require [hugsql.core :as hugsql]))

(def config
  {:classname "org.postgresql.Driver"
   :subprotocol "postgresql"
   :subname "//localhost:5432/telegram_bunker"
   :user "postgres"
   :password "postgres"})

(hugsql/def-sqlvec-fns "notes.sql")

(defn create-tables []
  (println "Creating  Notes Table")
  (create-notes-table config))
