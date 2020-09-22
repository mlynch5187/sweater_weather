class ResultsFacade
  def to_be_named_service
    ZomatoService.new
  end

  def zomato_search(not_sure_yet)
    to_be_named_service.get_things(not_sure_yet).map  do |thing|
      Zomato.new(thing)
    end
  end
end
