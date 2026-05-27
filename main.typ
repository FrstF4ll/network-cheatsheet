ETENDUE RESEAU :
#table(
  columns: 4,
  [*PAN*], [*LAN*], [*MAN*], [*WAN*],
  [Bluetooth, NFC (paiement sans contact), Dongle], [Ethernet (RJ45), Wi-Fi (lien machine routeur)], [WiMAX (WiFi d'une ville), Metro Ethernet], [Internet, Connexion satellite (TV), 4G / 5G],
)

FIBRES OPTIQUES : 
#table(columns: 3,
[*CAT*],[*Multimode*], [*Monomode*],
[*PORTEE*],[2.5KM], [100KM],
[*NOYAU*], [Plus large], [Plus petit]
)
- TOPOLOGIE :
#table(
  columns: 5,
  [*PàP*], [*Étoile*], [*Maillé*], [*Bus*], [*Anneau*],
  [$A -> B$], [Serveur central,  machines autour], [Tout interconnecté], ["Autoroute" tout est connecté], [Machines reliées en boucle],
  [Transfert de données simple], [Infrastructure réseau privés], [Internet], [Réseau d'alarme et sécurité], [Backbone (réseau qui interconnecte plusieurs infrastructures)],
)

- STRUCTURE D'UN RESEAU : 
#table(columns: 3,
[*Noyau*],  [*Distribution*], [*Accès*],
[Relie les gros morceaux du réseau], [Envoi vers les bons secteurs], [Les machines],
)

- CIDR : OCTECT.OCTET.OCTET.OCTET / NOMBRES DE BITS FIXÉS À 1 (bits vérouillés)

- NOMBRE DE BITS POUR HOSTS IP ET SOUS-RESEAUX SR :
#table(columns: 2,
[*BITS*], [*FORMULES*],
[nSR], [$frac("ln(SR)", "ln(2)")$],
[nIP],[$frac("ln(IP+2)", "ln(2)")$],
)

-  CLASSE D'ADRESSE IP CLASSFULL : 

#table(columns:2 ,
[*CLASSE*], [*MASQ/16UES*],
[*A*],[255.0.0.0/8],
[*B*],[255.255.0.0/16],
[*C*],[255.255.255.0/24],
)
- TABLEAU D'ADRESSAGE
#table(columns: 4,
[*IP SOUS-RESEAU*], [*PREMIERE IP UTIL.*], [*DERNIERE IP UTIL.*],[*BROADCAST*],
[Calculés], [IP sous-réseau + 1], [IP Broadcast - 1], [Dernière adresse si on remplis tous les bits de l'hôte],
) 
Modèle OSI, 7 couches :
#table(
  columns: 3,
  [*Nom*], [*Ce qu'elle concerne*], [*Exemples*],
  [1. Physique], [Support physique de transmission des bits (câbles, connecteurs)], [Hub, Répéteur, Modem, RJ45, Fibre optique],
  [2. Liaison], [Adressage MAC, passage des données d'une machine à l'autre], [Switch, Pont, Ethernet (802.3), ARP],
  [3. Réseau], [Acheminement entre réseaux, adressage logique], [Routeur, IPv4, Masque de sous-réseau],
  [4. Transport], [Contrôle du flux et fiabilité de la transmission], [TCP, UDP],
  [5. Session], [Gestion et autorisation des sessions entre applications], [NetBIOS, RPC],
  [6. Présentation], [Formatage des données pour les rendre compréhensibles], [TLS/SSL, JPEG, ASCII],
  [7. Application], [Interface utilisateur et services réseau], [DNS, DHCP, HTTP, Firewall],
)

On rajoute au final des pièces de légo au puzzle.

CABLES :
#table(
  columns: 3,
  [*Nom*], [*Constitution*], [*Utilisation*],
  [UTP], [Pas de blindage (Unshielded Twisted Pair)], [Souple, usage bureautique classique],
  [FTP], [Feuille d'alu globale (Foiled Twisted Pair)], [Passer dans les murs],
  [STP], [Blindage par tresse (Shielded Twisted Pair)], [Flexible, environnements avec interférences],
  [SFTP], [Tresse + feuille d'alu (Shielded & Foiled)], [Ultra solide, extérieur / zones sensibles],
)

Diff switch et Hub

Hub c'est naze, Switch c'est bien

Tqt

Trame 802.3

Préambule (7 octets) : Pour synchroniser les horloges.
Délimiteur de début : Signale le début réel des données.
Adresses Destination & Source : Les adresses MAC des machines. (destinataire et destination)
Données LLC : Le message lui-même.
FCS (Frame Check Sequence) : Un code de 4 octets pour vérifier que la trame n'a pas été corrompue durant le transport.

Préambule -> Sync des horloges, les machines sont pas à la même vitesse, donc on sync tout ça
Delimiteur début -> "HEy, c'est là que la donnée commence, lis à partir de là" !
Adresse, destination / sources : Adresses MAC desdeux machines
Données LLC : Le message, les données telle quelles
FCS : C'est un petit check en plus pour avoir une trame entière et qui fonctionne et se transmet comme on veut.

Bridge :

Littéralement un pont, comme quand on relie deux villes, switch -> Multipont sur plusieurs villes (Centre qui a plein de pont vers plein de ville)

Domaine de collision et de diffusion :

Collision : Domaine de limite, frontière des réseaux
Diffusion : Là ou le message se diffuse et se partage !


Unité X :

RFC950
Synthès

Unité X :

RFC950 :
Ce que j'ai bien compris : CIDR, PAN LAN MAN WAN

Ce que je souhaite revoir mais que je comprend facilement : Technologies, Mono et multimode, Topologies, IP, EMacs

Ce que je pense essentiel de revoir assez rapidement : Les problèmes d'adressage IP, les Protocoles et modèles (OSI, TCP IP) RFC950
RFC950
