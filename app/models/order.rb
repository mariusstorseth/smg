class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  belongs_to :office

  before_save :calculate_gross_sale!, :calculate_software_margin!, :calculate_semi_margin!,
              :calculate_production_margin!, :calculate_other_margin!,
              :calculate_ads_margin!, :calculate_margin!

  def calculate_software_margin!
    if software 
      self.software_coverage_rate ||= 80
      self.software_margin = software * software_coverage_rate / 100
    end
  end

  def calculate_semi_margin!
    if semi
      self.semi_coverage_rate ||= 70
      self.semi_margin = semi * semi_coverage_rate / 100
    end
  end

  def calculate_production_margin!
    if production
      self.production_coverage_rate ||= 50
      self.production_margin = production * production_coverage_rate / 100
    end
  end

  def calculate_other_margin!
    if other
      self.other_coverage_rate ||= 0
      self.other_margin = other * other_coverage_rate / 100
    end
  end

  def calculate_ads_margin!
    if ads
      self.ads_coverage_rate ||= 15
      self.ads_margin = ads * ads_coverage_rate / 100
    end
  end

  def calculate_gross_sale!
    sum = 0
    if software
      sum += software
    end
    if semi
      sum += semi
    end
    if production
      sum += production
    end
    if ads
      sum += ads
    end
    if other
      sum += other
    end

    self.gross_sale = sum
  end

  def calculate_margin!
    sum = 0
    if software_margin
      sum += software_margin
    end
    if semi_margin
      sum += semi_margin
    end
    if production_margin
      sum += production_margin
    end
    if ads_margin
      sum += ads_margin
    end
    if other_margin
      sum += other_margin
    end
    self.margin = sum
  end
end