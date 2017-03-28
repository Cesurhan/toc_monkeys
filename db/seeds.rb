Sponsor.delete_all
Workshop.delete_all
Event.delete_all

Workshop.create!([
  { title: "WS1", description: "D1", image: "image1", link_to_live_demo: "link1", link_to_github: "linkg1", },
  { title: "WS2", description: "D2", image: "image2", link_to_live_demo: "link2", link_to_github: "linkg2", },
  { title: "WS3", description: "D3", image: "image3", link_to_live_demo: "link3", link_to_github: "linkg3", },
])

Sponsor.create!([
  { company_name: "WS1", logo: "D1", },
])

event1 = Event.create!(title: "TOC 1", image: "Image 1", location: "Amsterdam", spaces_available: 1, workshop_id: 1, status: true, sponsor_id: 1)
event2 = Event.create!(title: "TOC 2", image: "Image 2", location: "Amsterdam", spaces_available: 1, workshop_id: 2, status: true, sponsor_id: 1)
event3 = Event.create!(title: "TOC 3", image: "Image 3", location: "Amsterdam", spaces_available: 1, workshop_id: 3, status: true, sponsor_id: 1)
