# 戦闘
class BaseService
  def call
    raise NotImplementedError
  end

  private

  def メッセージ出力(other)
    Rails.logger.info other
  end
end
