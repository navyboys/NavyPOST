module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end

  def display_datetime(dt)
    if logged_in? && !current_user.time_zone.blank?
      dt = dt.in_time_zone(current_user.time_zone)
    end

    dt.strftime("%Y/%m/%d %l:%M%P %Z") # 2014/01/01 9:08pm UTC
  end
end
