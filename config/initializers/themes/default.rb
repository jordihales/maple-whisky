::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'hero_title', title: 'Hero Title', partable_type: 'Spina::Text' },
    { name:'text', title: 'Text', partable_type:  'Spina::Text' },
    { name:'hero_image', title: 'Hero Image', partable_type:  'Spina::Image' },
    { name:'about_image', title: 'About Image', partable_type:  'Spina::Image' },
    { name:'about_us', title: 'About Us', partable_type:  'Spina::Text' },
    { name:'favourites', title: 'Favourites', partable_type:  'Spina::Structure' },
    { name:'testimonials', title: 'Testimonials', partable_type:  'Spina::Structure' },
    { name:'testimonials_image', title: 'Testimonials Image', partable_type:  'Spina::Image' },
    { name:'products', title: 'Products', partable_type:  'Spina::Structure' },
    { name:'scents', title: 'Scents', partable_type:  'Spina::Structure' }


  ]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: %w[hero_title hero_image about_image about_us favourites testimonials_image testimonials text]
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   %w[hero_title hero_image products]
  }, {
    name: 'scents',
    title:        'Scents',
    usage:        'Use for your content',
    page_parts:   %w[hero_title hero_image scents]
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

  theme.structures = [
    {
      name: 'testimonials',
      structure_parts: [
        { name: 'author', title: 'Author', partable_type: 'Spina::Line' },
        { name: 'quote', title: 'Quote', partable_type: 'Spina::Text' }
      ]
    },{
      name: 'products',
      structure_parts: [
        { name: 'name', title: 'Product Name', partable_type: 'Spina::Line' },
        { name: 'information', title: 'Information', partable_type: 'Spina::Text' },
        { name: 'image', title: 'Image', partable_type: 'Spina::Image' }
      ]
    },{
      name: 'favourites',
      structure_parts: [
        { name: 'name', title: 'Name', partable_type: 'Spina::Line' },
        { name: 'description', title: 'Description', partable_type: 'Spina::Text' },
        { name: 'image', title: 'Image', partable_type: 'Spina::Image' }
      ]
    },{
      name: 'scents',
      structure_parts: [
        { name: 'name', title: 'Name', partable_type: 'Spina::Line' },
        { name: 'description', title: 'Description', partable_type: 'Spina::Text' },
        { name: 'label', title: 'Image', partable_type: 'Spina::Image' }
      ]
    }
  ]

end
