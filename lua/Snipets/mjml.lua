local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('html', {
  -- MJML Boilerplate
  s('mjml', {
    t { '<mjml>', '' },
    t { '<mj-body>', '' },
    i(0),
    t { '</mj-body>', '' },
    t { '</mjml>' },
  }),

  -- MJML Head
  s('mj_head', {
    t { '<mj-head>', '' },
    i(0),
    t { '</mj-head>' },
  }),

  -- MJML Title
  s('mj_title', {
    t { '<mj-title>' },
    i(0, 'Title goes here'),
    t { '</mj-title>' },
  }),

  -- MJML Preview
  s('mj_preview', {
    t { '<mj-preview>' },
    i(0, 'Preview text goes here'),
    t { '</mj-preview>' },
  }),

  -- MJML Body
  s('mj_body', {
    t { '<mj-body width="' },
    i(1, '600px'),
    t { '">', '' },
    i(0),
    t { '</mj-body>' },
  }),

  -- MJML Section
  s('mj_section', {
    t { '<mj-section>', '' },
    i(0),
    t { '</mj-section>' },
  }),

  -- MJML Column
  s('mj_column', {
    t { '<mj-column>', '' },
    i(0),
    t { '</mj-column>' },
  }),

  -- MJML Text
  s('mj_text', {
    t { '<mj-text>' },
    i(0, 'Your text here'),
    t { '</mj-text>' },
  }),

  -- MJML Image
  s('mj_image', {
    t { '<mj-image src="' },
    i(1, 'https://via.placeholder.com/600x300'),
    t { '" alt="' },
    i(2, 'Image description'),
    t { '" />' },
  }),

  -- MJML Button
  s('mj_button', {
    t { '<mj-button href="' },
    i(1, 'https://example.com'),
    t { '">', '' },
    i(0, 'Click me'),
    t { '</mj-button>' },
  }),

  -- MJML Divider
  s('mj_divider', {
    t { '<mj-divider border-color="' },
    i(1, '#000000'),
    t { '" border-width="' },
    i(2, '1px'),
    t { '" />' },
  }),

  -- MJML Spacer
  s('mj_spacer', {
    t { '<mj-spacer height="' },
    i(1, '20px'),
    t { '" />' },
  }),

  -- MJML Social
  s('mj_social', {
    t { '<mj-social>' },
    i(0),
    t { '</mj-social>' },
  }),

  -- MJML Navbar
  s('mj_navbar', {
    t { '<mj-navbar>', '' },
    i(0),
    t { '</mj-navbar>' },
  }),

  -- MJML Hero
  s('mj_hero', {
    t { '<mj-hero background-url="' },
    i(1, 'https://via.placeholder.com/1200x600'),
    t { '" height="' },
    i(2, '300px'),
    t { '" mode="' },
    i(3, 'fluid-height'),
    t { '">', '' },
    i(0),
    t { '</mj-hero>' },
  }),

  -- MJML Wrapper
  s('mj_wrapper', {
    t { '<mj-wrapper>' },
    i(0),
    t { '</mj-wrapper>' },
  }),

  -- MJML Accordion
  s('mj_accordion', {
    t { '<mj-accordion>', '' },
    i(0),
    t { '</mj-accordion>' },
  }),

  -- MJML Accordion Element
  s('mj_accordion_element', {
    t { '<mj-accordion-element>', '' },
    i(0),
    t { '</mj-accordion-element>' },
  }),

  -- MJML Accordion Title
  s('mj_accordion_title', {
    t { '<mj-accordion-title>' },
    i(0, 'Accordion title'),
    t { '</mj-accordion-title>' },
  }),

  -- MJML Accordion Text
  s('mj_accordion_text', {
    t { '<mj-accordion-text>' },
    i(0, 'Accordion text content'),
    t { '</mj-accordion-text>' },
  }),

  -- MJML Carousel
  s('mj_carousel', {
    t { '<mj-carousel>', '' },
    i(0),
    t { '</mj-carousel>' },
  }),

  -- MJML Carousel Image
  s('mj_carousel_image', {
    t { '<mj-carousel-image src="' },
    i(1, 'https://via.placeholder.com/600x300'),
    t { '" alt="' },
    i(2, 'Carousel image description'),
    t { '" />' },
  }),

  -- MJML Raw
  s('mj_raw', {
    t { '<mj-raw>' },
    i(0),
    t { '</mj-raw>' },
  }),

  -- MJML Attributes
  s('mj_attributes', {
    t { '<mj-attributes>', '' },
    i(0),
    t { '</mj-attributes>' },
  }),

  -- MJML All
  s('mj_all', {
    t { '<mj-all font-family="' },
    i(1, 'Arial, sans-serif'),
    t { '" font-size="' },
    i(2, '13px'),
    t { '" color="' },
    i(3, '#000000'),
    t { '" />' },
  }),

  -- MJML Breakpoint
  s('mj_breakpoint', {
    t { '<mj-breakpoint width="' },
    i(1, '600px'),
    t { '" />' },
  }),

  -- MJML Font
  s('mj_font', {
    t { '<mj-font name="' },
    i(1, 'Roboto'),
    t { '" href="' },
    i(2, 'https://fonts.googleapis.com/css?family=Roboto'),
    t { '" />' },
  }),

  -- MJML Style
  s('mj_style', {
    t { '<mj-style>', '' },
    i(0, '/* Add your CSS here */'),
    t { '</mj-style>' },
  }),

  -- MJML Class
  s('mj_class', {
    t { '<mj-class name="' },
    i(1, 'my-class'),
    t { '">', '' },
    i(0),
    t { '</mj-class>' },
  }),

  -- MJML Hero Content
  s('mj_hero_content', {
    t { '<mj-hero-content>', '' },
    i(0),
    t { '</mj-hero-content>' },
  }),

  -- MJML Navbar Link
  s('mj_navbar_link', {
    t { '<mj-navbar-link href="' },
    i(1, 'https://example.com'),
    t { '">', '' },
    i(0, 'Navbar link'),
    t { '</mj-navbar-link>' },
  }),

  -- MJML Section Element
  s('mj_section_element', {
    t { '<mj-section-element>', '' },
    i(0),
    t { '</mj-section-element>' },
  }),

  -- MJML Social Element
  s('mj_social_element', {
    t { '<mj-social-element name="' },
    i(1, 'facebook'),
    t { '" href="' },
    i(2, 'https://facebook.com'),
    t { '" />' },
  }),

  -- MJML Group
  s('mj_group', {
    t { '<mj-group>', '' },
    i(0),
    t { '</mj-group>' },
  }),

  -- MJML Table
  s('mj_table', {
    t { '<mj-table>', '' },
    i(0, '<tr><td>Table content</td></tr>'),
    t { '</mj-table>' },
  }),

  -- MJML Hero Container
  s('mj_hero_container', {
    t { '<mj-hero-container>', '' },
    i(0),
    t { '</mj-hero-container>' },
  }),

  -- MJML Carousel Container
  s('mj_carousel_container', {
    t { '<mj-carousel-container>', '' },
    i(0),
    t { '</mj-carousel-container>' },
  }),
})
