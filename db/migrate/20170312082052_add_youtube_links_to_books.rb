class AddYoutubeLinksToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :youtube_audiobook_link, :text
    add_column :books, :youtube_animated_review_link, :text
  end
end
