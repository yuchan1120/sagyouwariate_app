class Form::Table < Form::Base
  FORM_COUNT = 96 #ここで、作成したい登録フォームの数を指定
  attr_accessor :rows

  def initialize(attributes = {})
    super attributes
    self.rows = FORM_COUNT.times.map { Row.new() } unless self.rows.present?
  end

  def rows_attributes=(attributes)
    self.rows = attributes.map { |_, v| Row.new(v) }
  end

  def save
    Row.transaction do
      self.rows.map do |row|
        row.save
      end
    end
      return true
    rescue => e
      return false
  end
end
