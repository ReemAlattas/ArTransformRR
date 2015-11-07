module LayoutHelper
  BASE_TITLE = "#{I18n.t('app_title')} - #{I18n.t('app_tagline')}"

  def full_title(page_title=nil)
    title = ''
    title += "#{page_title} :: " if page_title.present?
    title += BASE_TITLE
    title
  end

  def title(title_content=nil)
    content_for :page_title, title_content
  end

end