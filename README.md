# Questions:

## 1.What goal will your website be designed to achieve?

-   A mobile first, responsive, fast website, to perform research about board games.

## 2.What kind of users will visit your site? In other words, what is the demographic of your users?

-   Working age adults, 15-64

## 3.What data do you plan on using?

### You may have not picked your actual API yet,which is fine, just outline what kind of data you would like it to contain.

-   I plan on using data that involves board games. Some examples are: Game complexity Number of players Recommended number of players Game length Average game length Replay score, the higher the number the more you can replay it. MSRP Average price from retailers Where to buy

## 4. In brief, outline your approach to creating your project.

> (knowing that you may not know everything in advance and that these details might change later) Answer questions like the ones below, but feel free to add more information:

### 4a.What does your database schema look like?

-   Mainly 1:1 & 1:M relationships. Examples Below.
    -   one to many relationships - Examples below.
        1. publisher < bg
        2. user < bg_owned
        3. user < bg_wanted
        4. user < bg_favorite
        5. user < bg_following
        6. bg < bg_mechanics
        7. publisher < bg
-   Examples of Tables
    -   reg_user
        -   user_name
        -   user_email
        -   user_bg_owned
        -   owned board games
        -   wanted board games
        -   users friended
        -   unread_notifications
        -   read_notifications
    -   board game plays
        -   user_id
        -   bg_id
        -   bg_played_quantity
        -   bg_time_logged
    -   board game
        -   number of players column
        -   play time column
        -   game mechanic column
        -   publisher column
        -   id column
        -   foreign key
    -   achievements
        -   ach. name id
        -   ach. id
        -   ach. acquired date.
    -   achievements users
        -   achievements id
        -   user id (int, quantity)

### 4b. What kinds of issues might you run into with your API?

-   URL: [Boardgame Atlas API](https://www.boardgameatlas.com/api/docs)
    -   The data. There are not many board game API’s out there. Im not sure if I can do everything i’d like to with boardgame atlas API.

### 4c. Is there any sensitive information you need to secure? I’d like to have user’s log in so they can save searches and/or board games.

-   I wont be selling anything to the users, so they dont need credit cards.

-   I will be have to store their passwords.
    -   Most likely, will use bcrypt.

### 4d. What functionality will your app include?

-   User's to have own and wanted lists.
    -   with in the owned list, id like their to be a collection tracker. So the user knows what games they need to get all games by x publisher or all games in x series.
-   I think it'd be fun to have achievements: examples below.
    -   first search
    -   first comment
    -   first bump
    -   first game add
    -   fifth game add
    -   owns all games by published by a publisher
    -   owns more then 50 games
-   I'd like their to be a way comment and discuss individual games or talk in general.

### 4e. What will the user flow look like?

-   I was envisioning a simple interface with a expandable sandwich for mobile, a centered nav bar at the top that drops / opens upon hover.
-   I'd want it a tradtional site navbar at the top centered
-   mobile and tablet sites i'll want to have an expandable sandwich on the top right hand corner
-   drop menu's for lists
-   drop menu's for notifications
-   drop menu's for friends
-   drop menu's for searching
    -   advanced search feature
-   colors will be gentle colors liked by most working age adults. (TODO: Research colors)
-   profile in top right
-   profile circle in top right
-

### 4f. Do you have any stretch goals.

-   Id like to find a “community rated” best number of players.
    -   So players will know, it says 2-4. But it’s most enjoyable with “x players”. Im not sure if that exists.
-   A forum.
-   Feature request section maybe. Road map page for future updates maybe?
-   i'd like to add a chat room.

### Legend:

-   bg = board-game
-   one-to < many-relationship
