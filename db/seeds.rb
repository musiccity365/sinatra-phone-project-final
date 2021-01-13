User.destroy_all
Phone.destroy_all

musiccity365 = User.create(:name => "Michael Sackstein", :username => "musiccity365", :password => "Password1",)
musiccity365.phones.create(name: "Stromberg Carlson", model: "500 Rotary Desk Telephone", color: "ivory", age: 70)

vwrabbit245 = User.create(:name => "John Smith", :username => "vwrabbit245", :password => "Password2",)
vwrabbit245.phones.create(name: "AT&T", model: "500 Rotary Desk Telephone", color: "tan", age: 50)
vwrabbit245.phones.create(name: "Western Electric", model: "302 Rotary Desk Telephone", color: "black", age: 70)

phonelover123 = User.create(:name => "Jane Doe", :username => "phonelover123", :password => "Password3",)
phonelover123.phones.create(name: "Kellogg/ITT", model: "554 Rotary Wall Telephone", color: "beige", age: 70)
phonelover123.phones.create(name: "Western Electric", model: "554 Rotary Wall Telephone", color: "black", age: 70)
phonelover123.phones.create(name: "Western Electric", model: "500 Rotary Desk Telephone", color: "white", age: 50)


Phone.create(name: "Stromberg Carlson", model: "500 Rotary Desk Telephone", color: "ivory", age: 70)
Phone.create(name: "Kellogg/ITT", model: "554 Rotary Wall Telephone", color: "beige", age: 70)
Phone.create(name: "Western Electric", model: "554 Rotary Wall Telephone", color: "black", age: 70)
Phone.create(name: "Northern Telecom", model: "500 Rotary Desk Telephone", color: "tan", age: 50)
Phone.create(name: "Western Electric", model: "500 Rotary Desk Telephone", color: "white", age: 50)
Phone.create(name: "AT&T", model: "500 Rotary Desk Telephone", color: "tan", age: 50)
Phone.create(name: "Western Electric", model: "302 Rotary Desk Telephone", color: "black", age: 70)