class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def email_field(method, options = {})
    options[:class] ||= ''
    options[:class] += ' form-control'
    super
  end

  def password_field(method, options = {})
    options[:class] ||= ''
    options[:class] += ' form-control'
    super
  end

  def check_box(method, options = {})
    options[:class] ||= ''
    options[:class] += ' form-check-input'
    super
  end

  def submit(method, options = {})
    options[:class] ||= ''
    options[:class] += ' btn btn-primary'
    super
  end
end

ActionView::Base.default_form_builder = CustomFormBuilder
