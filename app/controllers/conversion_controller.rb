class ConversionController < ApplicationController
  def index
    # issue_name = "A BUYER should see who sent the quote, A SELLER should see who the quote was sent to #35"
    pr_name = params[:query]
    puts pr_name
    if pr_name
      pr_name = pr_name.gsub(/[^\p{Alnum}\p{Space}#]/, '')  # remove diacritics
      name, number = pr_name.split(/\s#(\d+)/)
      if name && number
        pr_name = number + "-" + name.downcase.tr(" ", "_")
      end
    end
    puts pr_name

    render :json => pr_name
  end
end
