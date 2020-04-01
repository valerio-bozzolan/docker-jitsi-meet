# Io Resto A Casa .work

Questo repository permette di creare velocemente una nuova istanza di Jitsi Meet da aggiungere al progetto.

Per creare la tua installazione segui questi semplici passi:

## 1. entra nella chat Telegram di supporto

e comunicaci la tua intenzione di creare un server

https://t.me/iorestoacasawork

ti faremo alcune domande e ti aiuteremo durante la procedura di installazione.

## 2. procurati un server
Puoi usare qualsiasi distribuzione GNU/Linux, avrai bisogno di installare solo `docker`, `docker-compose` e `git`.

Per installare Docker, ti consiglio di seguire la guida ufficiale:

https://docs.docker.com/install/

Per garantire un servizio migliore abbiamo stabilito i seguenti requisiti minimi:

• una macchina dedicata allo scopo, non condivisa con altri servizi.
* IPv4 statico (possibilmente in un datacenter italiano)
* connessione 100 Mbps simmetrica (meglio 1 Gbps, ogni utente occupa circa 4 Mbps)
* 4 CPU server grade (Xeon o analogo)
* 4GB di RAM

Server posizionati in datacenter italiani riducono latenza e congestione di rete.

Naturalmente un server più grande riuscirà ad ospitare più utenti!

## 3. scarica Jitsi Meet

```
cd /opt
git clone https://github.com/iorestoacasa-work/docker-jitsi-meet.git
cd docker-jitsi-meet
```

## 4. inserisci i parametri di configurazione

copia il file di configurazione di esempio `env.example` in `.env`

```
cp env.example .env
```
modifica il file `.env` ed inserisci i valori corretti nei primi 8 parametri.

se non sai cosa inserire chiedi aiuto nella chat Telegram.

Tieni presente che modificando la porta HTTP, modificherai la porta di ascolto
del server web che però deve essere esposta su Internet alla porta 80, altrimenti
[non riuscirai ad ottenere il certificato Let's Encrypt con questa installazione](https://letsencrypt.org/docs/allow-port-80/).
Ti consigliamo di non cambiarla.

## 5. avvia il tuo server
```
docker-compose up -d
```
questo comando avvia il server in background, quindi potrai chiudere la shell.

Per verificare che il servizio sia attivo puoi usare il comando
```
docker-compose ps
```
Per leggere i log usa
```
docker-compose logs -f --tail=10
```

## 6. verifica che il tuo Jitsi funzioni correttamente

apri l'URL della tua istanza con il browser sulla porta 80 e 443.

verifica che il certificato HTTPS sia stato generato correttamente (lucchetto verde)

verifica che le metriche vengano generate correttamente, visitando con il browser l'URL del tuo server sulla porta 8081

prova a creare una stanza, se riesci a vedere la tua faccia complimenti, sei riuscito ad installare Jitsi!

## 7. comunica la buona notizia nella chat Telegram

aggiungeremo il tuo server alla tabella sul sito https://iorestoacasa.work

