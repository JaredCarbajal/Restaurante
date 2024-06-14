function buscar() {
    // Obtener el texto de búsqueda ingresado por el usuario
    var searchText = document.getElementById('searchInput').value;
    
    // Obtener el contenedor donde se mostrarán los resultados de la búsqueda
    var searchResultsContainer = document.getElementById('searchResults');
    
    // Limpiar los resultados de búsquedas anteriores
    searchResultsContainer.innerHTML = '';
    
    // Obtener el contenido de la página o el elemento específico que deseas buscar
    var pageContent = document.body.innerHTML;
    
    // Realizar la búsqueda en el contenido de la página
    var searchRegex = new RegExp(searchText, 'gi'); // Expresión regular para buscar de forma global y sin distinguir mayúsculas y minúsculas
    var searchMatches = pageContent.match(searchRegex);
    
    if (searchMatches) {
      // Mostrar los resultados de la búsqueda
      searchMatches.forEach(function(match) {
        var resultItem = document.createElement('p');
        resultItem.textContent = match;
        searchResultsContainer.appendChild(resultItem);
      });
    } else {
      // Mostrar un mensaje si no se encontraron resultados
      var noResultsMessage = document.createElement('p');
      noResultsMessage.textContent = 'No se encontraron resultados.';
      searchResultsContainer.appendChild(noResultsMessage);
    }
  }
  