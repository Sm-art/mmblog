module TagsHelper
  def tags
		@tags = Tag.all
	end
end
