module AdminHelper
def capitalize(string)
    string.capitalize
  end


def created_at
    model.created_at.strftime("%b %d")
  end

end
