# ルート
crumb :root do
  link "フリマ", root_path
end

# マイページ
crumb :mypage do
  link "マイページ", user_path(current_user.id)
end

# ログアウト
crumb :logout do
  link "ログアウト", logout_users_path
  parent :mypage
end

# いいね
crumb :like do
  link "いいね！一覧", like_users_path
  parent :mypage
end

# 支払い情報
crumb :card do
  link "支払い情報", card_path
  parent :mypage
end

crumb :card_index do
  link "支払い情報", "/cards"
  parent :mypage
end

crumb :card_new do
  link "支払い情報", new_card_path
  parent :mypage
end

# カテゴリ
crumb :category do
  link Category.find(params[:id]).name, category_index_item_path
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).