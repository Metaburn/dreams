ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    default_coins = 10

    columns do
      column do
        panel I18n.t("activeadmin.info") do
          para link_to(Camp.count.to_s + " " + I18n.t("activerecord.models.camp.other"), admin_camps_path)
          para link_to(User.count.to_s + " " + I18n.t("activerecord.models.user.other"), admin_users_path)
          para (User.count * default_coins).to_s + " Total available coins for all users"
          para Grant.sum(:amount).to_s + " coins were distributed"
          para (Grant.sum(:amount) * app_setting('grant_value_for_currency')).to_s + " amount of money distributed"
        end
      end
    end

    # app/admin/dashboard.rb
    panel I18n.t("activeadmin.recent_updated") do
      table_for PaperTrail::Version.order('id desc').limit(20) do # Use PaperTrail::Version if this throws an error
        #column ("Item") { |v| v.item }
        column (I18n.t("activeadmin.item")) do |v|
          if(v.item.present? and v.item.name.present?)
            link_to v.item.name, [:admin, v.item]
          end
        end
        column (I18n.t("activeadmin.modified_at")) { |v| v.created_at.to_s :long }
        column (I18n.t("activerecord.models.user.one")) do |v|
            if(v.whodunnit)
              link_to User.find(v.whodunnit).email, [:admin, User.find(v.whodunnit)]
            end
          end
      end
    end
  end
end
