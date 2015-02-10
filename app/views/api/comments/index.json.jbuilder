json.array!(@comments) do |comment|
  json.partial!("comment", :comment => comment)

end

json.comment_count @comments.count
