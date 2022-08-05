class Transaction_log
  def initialize
    @date = Time.new

    def date 
      @date = strftime('%d/%m/%y')
    end
  end
end