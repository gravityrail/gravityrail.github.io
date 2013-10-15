require 'active_support/all'

class Post < Thor
  include Thor::Actions

  desc "new", "Creates a new post"
  argument :title
  def new
    date = Time.now.strftime("%Y-%m-%d")
    create_file "_posts/#{(date + '-' + title).parameterize}.md", <<-eos
---
layout: post
title: #{title}
description: A description
modified: #{date}
category: articles
tags: []
image:
  credit:
  creditlink:
  feature:
enable_comments: true
---

    eos
  end

desc "new_song", "Creates a new song"
  argument :title
  def new_song
    date = Time.now.strftime("%Y-%m-%d")
    create_file "_posts/#{(date + '-' + title).parameterize}.md", <<-eos
---
layout: post
title: #{title}
description:
modified: #{date}
category: songs
tags: [song]
image:
  credit:
  creditlink:
  feature:
enable_comments: true
---

    eos
  end

desc "new_art", "Creates a new artwork"
  argument :title
  def new_art
    date = Time.now.strftime("%Y-%m-%d")
    create_file "_posts/#{(date + '-' + title).parameterize}.md", <<-eos
---
layout: post
title: #{title}
description:
modified: #{date}
category: art
tags: [art]
image:
  credit:
  creditlink:
  feature:
enable_comments: true
---

    eos
  end

  desc "new_code", "Creates a new software project"
  argument :title
  def new_code
    date = Time.now.strftime("%Y-%m-%d")
    create_file "_posts/#{(date + '-' + title).parameterize}.md", <<-eos
---
layout: post
title: #{title}
description:
modified: #{date}
category: code
tags: [code]
image:
  credit:
  creditlink:
  feature:
enable_comments: true
---

    eos
  end


end