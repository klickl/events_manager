#app/assets/javascripts/angular/filter.js.coffee

#Filtre qui met en gras les mots 'places', 'scène', 'speaker', 'lieu'
@app.filter 'boldWords', () ->
    return (item) ->
      regex = /(place[s]?)|(sc[èeëéê]ne[s]?)|(speaker[s]?)|(lieu)/gi

      return item.replace(regex, '<b>$&</b>')



#filtre pour afficher le nom de l'évennement en rouge si il a lieu dans la semaine
@app.filter 'filterDate', () ->
    return (item, eventStrDate) ->
      today = new Date
      nextWeek = Date.parse(new Date(today.getFullYear(), today.getMonth(), today.getDate() + 7))
      eventDate = new Date(eventStrDate)
      if Date.parse(eventDate) <= nextWeek
        item = '<span class="red-text">' + item + '<i class="material-icons">warning</i></span>'
      else
        item = '<i class="material-icons">event</i>' + item
      return item
