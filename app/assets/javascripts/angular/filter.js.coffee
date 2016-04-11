#app/assets/javascripts/angular/filter.js.coffee

#Filtre qui met en gras les mots 'places', 'scène', 'speaker', 'lieu'
@app.filter 'boldWords', () ->
    return (item) ->
      regex = /(place[s]?)|(sc[èeëéê]ne[s]?)|(speaker[s]?)|(lieu)/gi

      return item.replace(regex, '<b>$&</b>')


@app.filter 'filterReturn', () ->
  return (item) ->
    regex = /\n/g
    return item.replace(regex, '<br>')



#filtre pour afficher le nom de l'évennement en rouge si il a lieu dans la semaine
@app.filter 'withinNextWeek', () ->
    return (item, eventStrDate) ->
      today = new Date
      nextWeek = Date.parse(new Date(today.getFullYear(), today.getMonth(), today.getDate() + 7))
      eventDate = new Date(eventStrDate)
      if Date.parse(eventDate) <= nextWeek
        item = '<span class="red-text">' + item + '<i class="material-icons">warning</i></span>'
      else
        item = '<i class="material-icons">event</i>' + item
      return item



@app.filter 'filterDate', () ->
  return (item) ->
    itemDate = new Date(item)
    monthNames = [ 'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin',
                 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre' ]
    result = itemDate.getDate() + " " + monthNames[itemDate.getMonth() - 1] + " " + itemDate.getFullYear()
    return result