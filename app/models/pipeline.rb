class Pipeline < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  belongs_to :office

  before_save :calculate_gross_sale!, :calculate_coverage_ratios!, 
              :calculate_product_margins!, :calculate_margin!, :calculate_weighted_values!

  
  def calculate_coverage_ratios!
    self.software_coverage_rate ||= 80
    self.semi_coverage_rate ||= 70
    self.production_coverage_rate ||= 50
    self.ads_coverage_rate ||= 15
    self.other_coverage_rate ||= 0
  end

  def calculate_product_margins!
    if software
      self.software_margin = software * software_coverage_rate / 100
    else
      self.software_margin = nil
    end

    if semi
      self.semi_margin = semi * semi_coverage_rate / 100
    else
      self.semi_margin = nil
    end

    if production
      self.production_margin = production * production_coverage_rate / 100
    else
      self.production_margin = nil
    end

    if ads
      self.ads_margin = ads * ads_coverage_rate / 100
    else
      self.ads_margin = nil
    end

    if other
      self.other_margin = other * other_coverage_rate / 100
    else
      self.other_margin = nil
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

  def calculate_weighted_values!
    if probability
      self.weighted_gross = gross_sale * probability / 100
      self.weighted_margin = margin * probability / 100
    else
      self.weighted_gross = 0
      self.weighted_margin = 0
    end
  end
end
