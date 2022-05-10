
// Filtre de recherche à la page formations

  // Capture mes cartes de formations dans une constante
  const cards = document.querySelectorAll('.card');
  // Capture le champ de recherche
  const searchCard = document.querySelector('#search');

  // Fonction de filtre de recherche sur le titre de la formation
  searchCard.addEventListener('input', () => {
    const searchValue = searchCard.value.toLowerCase();
    cards.forEach(card => {
      const cardTitle = card.querySelector('.title-card').innerText.toLowerCase();
      if (cardTitle.includes(searchValue)) {
        card.style.display = 'block';
      } else {
        card.style.display = 'none';
      }
    });
});