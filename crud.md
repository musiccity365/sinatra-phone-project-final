# Create
## New
- displays the form to make the new phone
- get /phones/new
- new.erb

## Create
- processes the form and it actually makes and saves the phone
- post /phones
- no view, redirects to show for that phone or index
- Model.create

# Read
## Index
- show all of the phones
- get /phones
- index.erb
- Model.all

## Show
- details on one of the phones
- get /phones/:id
- show.erb
- Model.find_by(id: params[:id])

# Update
## Edit
- displays the form to change one phone
- get /phones/:id/edit
- edit.erb
- Model.find_by(id: params[:id])


## Update
- processes the form and makes the change
- patch /phones/:id
- no view, redirect to show
- instance = Model.find_by(id: params[:id])
- instance.update(params[:key])


# Delete
## Destroy
- process the form and destroys the phone
- delete /phones/:id
- no view, redirect to index
- instance = Model.find_by(id: params[:id]) 
- instance.destroy