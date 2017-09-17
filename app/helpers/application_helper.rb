module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible", role: 'alert') do
        concat(content_tag(:button, class: 'close', data: { dismiss: 'alert' }) do
          concat content_tag(:span, '&times;'.html_safe, 'aria-hidden' => true)
          concat content_tag(:span, 'Close', class: 'sr-only')
        end)
        concat message
      end)
    end
    nil
  end

  def find_company_name(job)
    task = job.tasks.order(:updated_at).last
    if !task.nil?
      user = User.find_by_name(task.contactperson)
      user.company
    end
  end

    def find_description(job)
    task = job.tasks.order(:updated_at).last
    if !task.nil?
      truncate(task.description, :length => 25)
    end
  end


end
