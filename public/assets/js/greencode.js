// Rendre visible le mot de passe pour vérification
$(function() {
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#registration_form_plainPassword');
    const postulate_pw = document.querySelector('#coach_form_plainPassword');


    // Pour la page /s'inscrire
    togglePassword.addEventListener('click', () => {
      if (password.type === 'password') {
        password.type = 'text';
      } else {
        password.type = 'password';
      }      
    });

    // Pour la page /postuler
    togglePassword.addEventListener('click', () => {
      if (postulate_pw.type === 'password') {
        postulate_pw.type = 'text';
      } else {
        postulate_pw.type = 'password';
      }      
    });

});

// Filtre de recherche à la page /formations
$(function() {
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
});
