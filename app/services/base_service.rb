# 戦闘
class BaseService
  def call
    raise NotImplementedError
  end

  private

  def メッセージ出力(文言)
    Rails.logger.info 文言
  end
end
