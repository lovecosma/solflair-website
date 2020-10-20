const fetchItems = () => {
    return dispatch => {
      console.log("c");
        dispatch({ type: 'START_ADDING_ITEMS_REQUEST' });
        fetch('http://localhost:3001/items')
          .then(response => response.json())
          .then(items => {
            console.log("d");
              dispatch({ type: 'ADD_ITEMS', items })
            });
      };
}

export default fetchItems