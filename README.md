# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# DB設計

## student table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_many :chats
- has_many :favorites

## teacher table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|name_kana|string|null: false|
|email|string|null: false, unique: true|

### Association
- has_one :teacher_profile, dependent: :destroy
- has_one :card, dependent: :destroy
- has_many :chats 
- has_many :favorites

## teacher_profile table

|Column|Type|Options|
|------|----|-------|
|teacher_id|reference|null: false, foregin_key: true|
|university|string|null: false|
|instrument|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|fee|string|null: false|

### Association
- belongs_to :teacher

## card table

|Column|Type|Options|
|------|----|-------|
|teacher_id|reference|null: false, foregin_key: true|
|card_number|string|null: false|
|expiration_date_month|string|null: false|
|expiration_date_year|string|null: false|
|security_code|string|null: false|

### Association
- belongs_to :teacher

## favorite table

|Column|Type|Options|
|------|----|-------|
|teacher_id|reference|null: false, foregin_key: true|
|student_id|reference|null: false, foregin_key: true|

### Association
- belongs_to :teacher
- belongs_to :student

## chat table

|Column|Type|Options|
|------|----|-------|
|teacher_id|reference|null: false, foregin_key: true|
|student_id|reference|null: false, foregin_key: true|
|talk|text|null: false|

### Association
- belongs_to :teacher
- belongs_to :student