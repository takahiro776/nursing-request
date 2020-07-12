# README

## imagesテーブル

|Culumn|Type|Option|
|------|----|-------|
|url|string|null: fallse|

### Association
- has_many :images-tags
- has_many :tags, through: images_tags


## tagsテーブル

|Culumn|Type|Option|
|------|----|-------|
|name|string||

### Association
- has_many :images-tags
- has_many :images, through: images_tags


## images_tagsテーブル

|Culumn|Type|Option|
|------|----|-------|
|image-id|reference|null: fallse, foreign_key: true|
|tag-id|references|null: fallse, foreign_key: true|

### Association
- belongs_to :image
- belongs_to :tag

