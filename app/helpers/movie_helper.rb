module MovieHelper
  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.price)
    end
  end

    def format_average_stars(movie)
    if movie.average_stars.nil?
      content_tag(:strong, 'No reviews')
    else
      pluralize(number_with_precision(movie.average_stars, precision: 1) , 'star')
    end
  end
end
