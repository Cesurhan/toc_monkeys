Event.delete_all
Sponsor.delete_all
Workshop.delete_all

sponsor = Sponsor.create( company_name: "DuckyTime", logo: "https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjkkLTIrv7SAhVBXhoKHSbRBlsQjRwIBw&url=http%3A%2F%2Farabianswimacademy.com%2Flevel%2Fduck%2F&psig=AFQjCNGcscgONLK2TIqkQF9rgOLl82YmQg&ust=1490967944851723")

workshop = Workshop.create( title: "ruuuuuby", description: "learning awesome things", image: "https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiqlefJr_7SAhXFfxoKHS2YDmAQjRwIBw&url=https%3A%2F%2Fmarketplace.visualstudio.com%2Fitems%3FitemName%3Drebornix.Ruby&psig=AFQjCNGqQsMH7sujQLDKaHFWlVvYOGpmTg&ust=1490968217761580", link_to_live_demo: "https://google.com", link_to_github: "https://github.com")

event1 = Event.create(title: "cool event", image: "https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjkkLTIrv7SAhVBXhoKHSbRBlsQjRwIBw&url=http%3A%2F%2Farabianswimacademy.com%2Flevel%2Fduck%2F&psig=AFQjCNGcscgONLK2TIqkQF9rgOLl82YmQg&ust=1490967944851723", location: "in a pond", spaces_available: 21, workshop: workshop, status: true, sponsor: sponsor, date: Date.new(2017,5,5))
event2 = Event.create(title: "less cool event", image: "https://www.google.nl/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjkkLTIrv7SAhVBXhoKHSbRBlsQjRwIBw&url=http%3A%2F%2Farabianswimacademy.com%2Flevel%2Fduck%2F&psig=AFQjCNGcscgONLK2TIqkQF9rgOLl82YmQg&ust=1490967944851723", location: "On solid boring ground", spaces_available: 20, workshop: workshop, status: false, sponsor: sponsor, date: Date.new(2017,5,7))
