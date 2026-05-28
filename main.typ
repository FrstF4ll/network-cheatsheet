#set page(margin: (x: 1.2cm, y: 0.8cm))
#set text(size: 7.5pt)
#set par(spacing: 0.4em)

ETENDUE RESEAU :
#table(columns: 4, inset: 4pt,
[*PAN*], [*LAN*], [*MAN*], [*WAN*],
[Bluetooth, NFC (paiement sans contact), Dongle], [Ethernet (RJ45), Wi-Fi (lien machine routeur)], [WiMAX (WiFi d'une ville), Metro Ethernet], [Internet, Connexion satellite (TV), 4G / 5G],
)
FIBRES OPTIQUES :
#table(columns: 3, inset: 4pt,
[*CAT*],[*Multimode*], [*Monomode*],
[*PORTEE*],[2.5KM], [100KM],
[*NOYAU*], [Plus large], [Plus petit]
)
- TOPOLOGIE :
#table(columns: 5, inset: 4pt,
[*PàP*], [*Étoile*], [*Maillé*], [*Bus*], [*Anneau*],
[$A -> B$], [Serveur central,  machines autour], [Tout interconnecté], ["Autoroute" tout est connecté], [Machines reliées en boucle],
[Transfert de données simple], [Infrastructure réseau privés], [Internet], [Réseau d'alarme et sécurité], [Backbone (réseau qui interconnecte plusieurs infrastructures)],
)
- STRUCTURE D'UN RESEAU :
#table(columns: 3, inset: 4pt,
[*Noyau*],  [*Distribution*], [*Accès*],
[Relie les gros morceaux du réseau], [Envoi vers les bons secteurs], [Les machines],
)
#stack(dir: ltr, spacing: 1em,
[#table(columns: 2,
[*BITS*], [*FORMULES*],
[nSR], [$frac("ln(SR)", "ln(2)")$],
[nIP],[$frac("ln(IP+2)", "ln(2)")$],
)],
[#table(columns:2,
[*CLASSE*], [*MASQ/16UES*],
[*A*],[255.0.0.0/8],
[*B*],[255.255.0.0/16],
[*C*],[255.255.255.0/24],
)],
)
Modèle OSI, 7 couches :
#table(columns: 3, inset: 4pt,
[*Nom*], [*Ce qu'elle concerne*], [*Exemples*],
[1. Physique], [Support physique de transmission des bits (câbles, connecteurs)], [Hub, Répéteur, Modem, Fibre optique],
[2. Liaison], [Adressage MAC, passage des données d'une machine à l'autre], [Switch, Pont, Ethernet (802.3), ARP],
[3. Réseau], [Acheminement entre réseaux, adressage logique], [Routeur, IPv4, Masque de sous-réseau],
[4. Transport], [Contrôle du flux et fiabilité de la transmission], [TCP, UDP],
[5. Session], [Gestion et autorisation des sessions entre applications], [NetBIOS, RPC],
[6. Présentation], [Formatage des données pour les rendre compréhensibles], [TLS/SSL, JPEG, ASCII],
[7. Application], [Interface utilisateur et services réseau], [DNS, DHCP, HTTP, Firewall],
)
CABLES :
#table(columns: 3, inset: 4pt,
[*Nom*], [*Constitution*], [*Utilisation*],
[UTP], [Pas de blindage (Unshielded Twisted Pair)], [Souple, usage bureautique classique],
[FTP], [Feuille d'alu globale (Foiled Twisted Pair)], [Passer dans les murs],
[STP], [Blindage par tresse (Shielded Twisted Pair)], [Flexible, environnements avec interférences],
[SFTP], [Tresse + feuille d'alu (Shielded & Foiled)], [Ultra solide, extérieur / zones sensibles],
)
- SWITCH VS HUB :
  - HUB : Envoie les données à tout le monde, et regarde qui a demandé après.
  - SWITCH : Le switch sait déjà qui lui a envoyé l'info ou la requête, et lui renvoie au bon endroit.
- PROTOCOLES ET TERMES :
#table(columns: 2, inset: 4pt,
[*Terme*], [*Définition*],
[TCP/IP], [Modèle de référence simplifié en 4 couches (Application, Transport, Internet, Interface réseau) utilisé pour illustrer la communication entre les systèmes.],
[IP], [Système de numérotation structuré servant à identifier les utilisateurs d'un réseau et à acheminer les paquets d'informations via le processus de « routage ».],
[DNS], [Service essentiel qui traduit les noms de domaines (ex: google.com) en adresses IP compréhensibles par les machines.],
[DHCP], [Protocole qui distribue automatiquement des adresses IP aux machines du réseau sous forme de baux (leases).],
[ARP], [Protocole effectuant la correspondance entre une adresse IP logique et l'adresse physique MAC d'une machine.],
[Adresse MAC], [Identifiant physique unique au monde, gravé sur chaque interface réseau, utilisé par le commutateur (Switch) pour diriger les données.],
[NAT], [Service permettant de traduire les adresses IP privées d'un réseau local en une adresse IP publique pour accéder à Internet.],
[LLC], [Partie supérieure de la couche 2 OSI assurant le contrôle de la liaison logique indépendamment du matériel.],
[FCS], [Séquence de contrôle située à la fin d'une trame Ethernet pour vérifier l'absence d'erreurs de transmission.],
)
- CATÉGORIES DE CÂBLES :
#table(columns: 6, inset: 4pt,
[*Catégorie*], [*Classe*], [*Fréquence max.*], [*Débit max.*], [*Longueur max.*], [*Connecteur*],
[Cat. 5], [D], [100 MHz], [1 Gbit/s], [100 m], [RJ45],
[Cat. 6], [E], [250 MHz], [1 Gbit/s], [100 m], [RJ45],
[Cat. 6A], [EA], [500 MHz], [10 Gbit/s], [100 m], [RJ45],
[Cat. 7], [F], [600 MHz], [10 Gbit/s], [100 m], [Autre que RJ45],
[Cat. 7a], [FA], [1 GHz (1000 MHz)], [10 Gbit/s], [100 m], [Autre que RJ45],
[Cat. 8.1], [I], [2 GHz (2000 MHz)], [40 Gbit/s (y compris 25)], [30 m], [RJ45],
[Cat. 8.2], [II], [2 GHz (2000 MHz)], [40 Gbit/s (y compris 25)], [30 m], [Autre que RJ45],
)
*Câble coaxial* : utilisé historiquement pour l'Ethernet (10Base5 et 10Base2 à 10 Mbit/s) et aujourd'hui pour les hautes fréquences et les antennes.

