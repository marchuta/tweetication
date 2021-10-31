# README

## users table
| Column                 | Type  | Options     |
| -----------------------| ------| ----------- |
| nickname               | string| null: false |
| email                  | string| null: false, unique: true |
| encrypted_password     | string| null: false |
| last_name_kanji        | string| null: false |
| first_name_kanji       | string| null: false |
| last_name_katakana     | string| null: false |
| first_name_katakana    | string| null: false |
| birthday               | date  | null: false |



## tweets table
| Column             | Type  | Options     |
| ----------------   | ------| ----------- |
| sentence           | text  | null: false |
| price              | integer | null: false |
| user               | references| null: false, foreign_key: true |
