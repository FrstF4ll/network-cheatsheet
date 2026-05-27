
Unité 1


- Etape 5 et 6 de calcul d'adresses à revoir.

ETENDUE RESEAU :
PAN | LAN |  MAN |  WAN
Bluetooth, NFC (Paiement sans contact), Dongle (dispositif USB connecté à un autre outil) | Ethernet (RJ45), Wi-Fi (lien machine routeur) | WiMAX (WiFi d'une ville), Metro Ethernet | Internet, Conexion satellite (TV), 4G / 5G
- Fibre multimode vs Monomode
- TOPOLOGIE :
PàP | Etoile | Maillé | Bus | Anneau
A -> B | Serveur central avec toute les machines autours | Toute les machines entre elles | Lien central ou toute les machines sont reliées | Machine reliées en boucle
Transfert de donnée simple | infrastructure réseau privé (PME) | Internet | Réseau d'alarme et de sécurité (ancêtre pour les réseau informatique, plus utilisé aujourd'hui) | Backbone (réseau qui interconnecte plusieurs infrastructures)
- Structure d'un réseau
Noyau | Distribution | Accès
Relie les gros morceaux du réseau | Envoi vers les bons secteurs | Les machines

CIDR : OCTECT.OCTET.OCTET.OCTET / NOMBRES DE BITS FIXÉS À 1
= Annexe

Calcule d'adresse IP

1. Nbr de SR (sous-réseau) et nbr d'adresse IP (nombre de machines connectées au réseau)
  - Besoins +10%
2. Nombre de bits (nSR et nIP)
  - nSR =$frac("ln(SR)", "ln(2)")$

  - nIP =$frac("ln(IP+2)", "ln(2)")$
3. Classe de Net_ID
- A -> 16Mi machines
- B -> 65K machines
- C ->  254 machines
4. Masque du réseau
- A -> 255.0.0.0/8
- B -> 255.255.0.0/16
- C -> 255.255.255.0/24
5. Adreses du sous réseau.
- Basé sur le nombre de bits :
- On passe les bits reservé tous à 0 -> IPSR
- On compte un peu en binaire sur les bits reservés.
- On passe les bits reservé tous à 1 -> Broadcast
- On ne sépare pas les deux sous-réseau pour l'étape d'après.
6. Tableau annuaire pour chaque IP.
IP Sous-réseau | 1ere IP utilisable | dernière IP utilisable | Broadcast |
Bits reservé SR tous à 0 | IPSR + 1 | Broadcast -1 | Bits reservés SR tous à 1



Unité 2

Modèles OSI, 7 couches :

7. Application (le code qu'on run)
6. Présentation (Les données qu'on va utiliser dans l'application)
5. Session
4. Transports
3. Réseau
2. Liaison
1. Physique

1. Physiques

Là ou vont passer les données. (Câbles, Hub), ici elles circulent juste, mais elles vont encore nullepart précisemment, rien n'est connectés !

Equipement : Hub, Repeteur, Modem
Supports : Paires torsadées, Fibre optique, Cable coaxial
Connecteurs : RJ45

2. Liaison
Là ou on va commencer à brancher tous les câbles (Switch, adresse MAC), c'est le moment ou les données vont vraiment passer d'une machine à l'autre.
Equipement : Switch, Pont
Adressage : Adresse MAC (identifiant unique sur 48bits de la carte réseau machine)
Protocoles et normes : Ethernet (802.3) Wifi (802.11), ARP

Tech : Switch, protocoles Ethernet
3. Réseau

Les machines sont toute liées, géniale... Maintenant si on veut liée des structure pour se simplifier la vie, on intègre cette troisième couche.
C'est plus une machine A à une machine B, c'est une structure de machine A à une structure de machine B !

Equipement : Routeur
Adressage: IPv4, masque sous réseau

4. Transport
On check que les données passent bien comme il faut dans la forme qu'on veut, on se contente plus de les faire passer de manière plus complexe, mais de les faire passer de la FACON donto n veut.

5. Session
Autorisation des UTILISATEURS ! On passe des données,  du brute, aux utilisateurs de manière progressive.

6: Présentation
On met en forme les données pour que ce soit compréhensible par l'humain, c'est le moment ou on voit moins d'abstraction vis a vis du language humain

7. Application
C'est l'outil utilisé par nous, l'utilisateur etc. Là, on utilise les données et toute la structure qu'il y a derrière en backend pour pouvoir par exemple, enregistrer un formulaire.
C'est la face avant facile à utiliser du modèle OSI.

Protocole : DNS, DHCP, Firewall
Note : Couche 2 (liaison) -> Generateur sur machine directement
Couche 3 (réseau) -> Generateur sur commutateur d'energie sur plein d'autre machines, reliées potentiellement à d'autre machine codépendante

Tout est dans la complexité.

On rajoute au final des pièces de légo au puzzle.

CABLES :

C'est la partie chiante par coeur, faire court :

TP = Twisted pair
U = Unshielded
F = Foiled
S = Shieleded

Les normes qui existent

UTP -> Pas protégés, souples
FTP -> Feuille d'alu pour le blindage -> Passer dans les murs
STP -> Blindage par tresse, plus flexibles
SFTP -> Gold, mélange du S et du F, c'est ultra solide.

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
