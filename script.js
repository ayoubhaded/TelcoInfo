// Données des offres
const offers = [
    { name: "Forfait Fibre 100 Mb", price: "99 TND", description: "Accédez à internet ultra-rapide avec notre forfait Fibre 100 Mb." },
    { name: "Forfait Fibre 200 Mb", price: "149 TND", description: "Profitez de la vitesse de connexion optimale avec 200 Mb." },
    { name: "Forfait Fibre 500 Mb", price: "199 TND", description: "Pour les utilisateurs intensifs, optez pour 500 Mb pour une navigation fluide." },
    { name: "Forfait ADSL 10 Go", price: "30 TND", description: "Un forfait ADSL abordable avec 10 Go de data pour les petites utilisations." },
    { name: "Forfait ADSL 50 Go", price: "50 TND", description: "Idéal pour les foyers avec un usage quotidien d'internet." }
];

// Afficher les offres
const offersContainer = document.getElementById("offers-container");

offers.forEach(offer => {
    const offerCard = document.createElement("div");
    offerCard.classList.add("offer-card");
    offerCard.innerHTML = `
        <h3>${offer.name}</h3>
        <p><strong>Prix :</strong> ${offer.price}</p>
        <p>${offer.description}</p>
    `;
    offersContainer.appendChild(offerCard);
});

