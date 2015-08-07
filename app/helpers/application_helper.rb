module ApplicationHelper
  def get_user_apps(remote)
    intersection = ApplicationRole.all.map { |ar| ar.webtailor_string } & remote.map { |r| r['role'] }
    ApplicationRole.select { |ar| intersection.include? ar['webtailor_string'] }
  end
end
