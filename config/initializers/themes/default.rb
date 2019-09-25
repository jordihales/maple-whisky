::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'hero_title', title: 'Hero Title', partable_type: 'Spina::Text' },
    { name:'text', title: 'Text', partable_type:  'Spina::Text' },
    { name:'hero_image', title: 'Hero Image', partable_type:  'Spina::Image' },
    { name:'about_image', title: 'About Image', partable_type:  'Spina::Image' },
    { name:'about_us', title: 'About Us', partable_type:  'Spina::Text' },


  ]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: %w[hero_title hero_image about_image about_us text]
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

  theme.navigations = [{
    name: 'mobile',
    label: 'Mobile'
  }, {
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }]

end
