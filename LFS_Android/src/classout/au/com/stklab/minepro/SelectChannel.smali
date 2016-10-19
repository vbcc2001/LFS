.class public Lau/com/stklab/minepro/SelectChannel;
.super Landroid/app/ListActivity;


# static fields
.field public static helpLink:Ljava/lang/String;

.field public static thisAct:Lau/com/stklab/minepro/SelectChannel;


# instance fields
.field channel_strs_madthumbs:[Ljava/lang/String;

.field channel_strs_pornhub:[Ljava/lang/String;

.field channel_strs_spankwire:[Ljava/lang/String;

.field channel_strs_thisav:[Ljava/lang/String;

.field channel_strs_tube8:[Ljava/lang/String;

.field channel_strs_vidz:[Ljava/lang/String;

.field show_strs_madthumbs:[Ljava/lang/String;

.field show_strs_pornhub:[Ljava/lang/String;

.field show_strs_spankwire:[Ljava/lang/String;

.field show_strs_thisav:[Ljava/lang/String;

.field show_strs_tube8:[Ljava/lang/String;

.field show_strs_vidz:[Ljava/lang/String;

.field public startMainActivityHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://www.google.com.au/search?client=safari&rls=en&q=basic+conversion+to+Dalvik&ie=UTF-8&oe=UTF-8&redir_esc=&ei=S5196430DT-CUG827XiAflgsnKBw"

    sput-object v0, Lau/com/stklab/minepro/SelectChannel;->helpLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lau/com/stklab/minepro/SelectChannel$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/SelectChannel$1;-><init>(Lau/com/stklab/minepro/SelectChannel;)V

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->startMainActivityHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lau/com/stklab/minepro/SelectChannel;->thisAct:Lau/com/stklab/minepro/SelectChannel;

    sput-object p0, Lau/com/stklab/minepro/Global;->selectChannelActivity:Lau/com/stklab/minepro/SelectChannel;

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ebe

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bondage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camel_toe"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cumshots"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "double_penetration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "female_friendly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "red_head"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "rough_sex"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "small_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "squirt"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "threesome"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "webcam"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "big_boobs"

    aput-object v1, v0, v6

    const-string v1, "blonde"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dildo_toys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "porn_stars"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "softcore"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cumshot"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "funny"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "teen_18"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "blowjob"

    aput-object v1, v0, v6

    const-string v1, "ebony"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "erotic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "strip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "teen"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "japanese AV"

    aput-object v1, v0, v3

    const-string v1, "big tits"

    aput-object v1, v0, v4

    const-string v1, "wife"

    aput-object v1, v0, v5

    const-string v1, "camera"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3d"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "All Holes"

    aput-object v1, v0, v5

    const-string v1, "Amateur"

    aput-object v1, v0, v6

    const-string v1, "Anal"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Arab"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Asian"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ass To Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Asslicking"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Babysitters"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Balloons"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Balls Licking"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Beach"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Big Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Big Cock"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Big Naturals"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Big Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Bisexual"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Black Booty"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Black Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Blindfold"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Blonde"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Boat"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Bondage"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Boots"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Braces"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Braids"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Brown Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Bus"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Cage"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Casting"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Cheerleader"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chubby"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Closeup"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Cock Suckers"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Condom"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Corset"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Cum Glass"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Cum In Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Cum On Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Cum On Feet"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Cum On Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Cum Swallow"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Cumshot"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Cumswap"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Dog Collar"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Doggystyle"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dp"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Erotica"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Exhibitionism"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Face-sitting"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Facial"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Fat"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Fingering"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Fishnet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Fisting"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Flexible"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Food"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Foot"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Gangbang"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Gape"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Garterbelt"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Gay"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Girl Fucks Guy"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Glasses"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Gloves"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Gonzo"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Granny"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Group"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Gum"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Gym"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hairy"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Hat"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "High Definition"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "High Heels"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Housewife"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Huge Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Huge Toys"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Indian"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Insertions"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Jacuzzi"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Jeans"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Kissing"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Kitchen"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Latex"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Lingerie"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Long Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Maids"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Mask"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Massage"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Mature"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Mature Fat"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Messy"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Midget"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Milf"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Milk"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Mirror"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Multiple Blowjobs"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Non Nude"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Nurse"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Oiled"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Old Young 3some"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Old Young Father"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Old Young Lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Old Young Mother"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "On Top"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Open Pussy"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Pale"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Panties"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Pantyhose"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Piercing"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Pigtails"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Pissing"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Pool"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Pov"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Pregnant"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Pussy Fucking"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Pussy Licking"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Pussy To Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rides"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rough Sex"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Saggy Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Schoolgirl"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Secretary"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Sexy"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Shaved"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Shemale"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Short"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Short Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Shower"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Smalltits"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Smoking"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Socks"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Spanking"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Squirting"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Stockings"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Strap-on"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Stripper"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Swimming-pool"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Tanned"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Tattoo"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Teasing"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Teen"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Thong"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Threesome"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Throat-fucking"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Tie"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Tit Licking"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Titjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Toilet"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Toys"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Transvestite"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Uniform"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Upskirt"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Vegetable"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Vintage"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Voyeur"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Wet"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Whipping"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "White On Black"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    :goto_72d
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bondage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camel_toe"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cumshots"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "double_penetration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "female_friendly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "red_head"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "rough_sex"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "small_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "squirt"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "threesome"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "webcam"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "big_boobs"

    aput-object v1, v0, v6

    const-string v1, "blonde"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dildo_toys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "porn_stars"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "softcore"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cumshot"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "funny"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "teen_18"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "blowjob"

    aput-object v1, v0, v6

    const-string v1, "ebony"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "erotic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "strip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "teen"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "28"

    aput-object v1, v0, v3

    const-string v1, "35"

    aput-object v1, v0, v4

    const-string v1, "36"

    aput-object v1, v0, v5

    const-string v1, "34"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "217"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "208"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "211"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "63"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "68"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "69"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "70"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "71"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "72"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "73"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "74"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "75"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "76"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "77"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "78"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "79"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "214"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "83"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "85"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "88"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "89"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "92"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "94"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "95"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "97"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "216"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "100"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "101"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "209"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "102"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "103"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "104"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "105"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "106"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "107"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "108"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "109"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "111"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "112"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "113"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "114"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "115"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "116"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "117"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "119"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "120"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "121"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "122"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "123"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "124"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "125"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "126"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "127"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "128"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "129"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "131"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "132"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "133"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "134"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "135"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "136"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "137"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "138"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "139"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "140"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "141"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "142"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "143"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "144"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "146"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "147"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "148"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "149"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "150"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "151"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "152"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "98"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "154"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "156"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "157"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "159"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "160"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "161"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "162"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "163"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "164"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "165"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "166"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "167"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "168"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "169"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "172"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "173"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "174"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "175"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "176"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "178"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "180"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "181"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "182"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "183"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "185"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "186"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "215"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "187"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "188"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "189"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "190"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "191"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "192"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "193"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "194"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "196"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "197"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "199"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "200"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "201"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "210"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "202"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "203"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "206"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "207"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_vidz:[Ljava/lang/String;

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e58

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_pornhub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3986

    :cond_e58
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_e65
    :goto_e65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reachable1 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lau/com/stklab/minepro/Global;->channel1Reachable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reachable2 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lau/com/stklab/minepro/Global;->channel2Reachable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reachable3 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lau/com/stklab/minepro/Global;->channel3Reachable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reachable4 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lau/com/stklab/minepro/Global;->channel4Reachable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_ebe
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e1

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uc77c\ubc18\uc778"

    aput-object v1, v0, v3

    const-string v1, "\ud56d\ubb38 \uc139\uc2a4"

    aput-object v1, v0, v4

    const-string v1, "\uc544\uc2dc\uc544"

    aput-object v1, v0, v5

    const-string v1, "\uc5c9\ub369\uc774"

    aput-object v1, v0, v6

    const-string v1, "\uadc0\uc5ec\uc6b4\ub144"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\ub6b1\ub140"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc655\uc790\uc9c0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud070 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uae08\ubc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ub178\uc608\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uac08\uc0c9\uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\uc5ec\ub7ec\ub0a8\uc790 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\uaf49\ub080 \uc5ec\uc131"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\uc720\uba85 \uc778\uc0ac "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ubaa8\uc74c\uc9d1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uc9c8\ub0b4 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ucda4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "2\ub3001 \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\ud751\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\uc720\ub7fd\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\uce5c\uc808\ud55c \uc5ec\uc131"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\ud398\ud2f0\uc2dc"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ub3d9\uc131\uc560\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ub300\uc2e0\ub538\uccd0\uc8fc\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ud558\ub4dc\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\uc560\ub2c8\uba54\uc774\uc158"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ub2e4\ub978\ub098\ub77c \uc0ac\ub78c\ub07c\ub9ac "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ub77c\ud2f4\uc778 "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\ub808\uc988\ube44\uc5b8 "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\uc790\uc704"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\uc131\uc219\ud55c"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\uc544\uc90c\ub9c8\ub4e4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\uc220\uacfc \uc74c\uc2dd\uc744 \uacc1\ub4e4\uc778 \uc139\uc2a4 \ud30c\ud2f0"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\ubc16\uc5d0\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\ud074\ub7fd\uc5d0\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\uc57c\ub3d9 \ubc30\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ubcf4\ub294\uc0ac\ub78c \uc2dc\uc810"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud604\uc2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\ube68\uac04 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\uac70\uce5c \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\uc791\uc740 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\uc5ec\uc790 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\uc2a4\ud2b8\ub9bd\uc1fc"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\uccad\uc18c\ub144"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\uc138 \uba85\uc774 \ud568\uaed8 \ud558\ub294 \uc131\ud589\uc704"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\uc7a5\ub09c\uac10\uc13b"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\uc624\ub798\ub41c \uc601\uc0c1"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\uc6f9\ucea0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uc77c\ubc18\uc778"

    aput-object v1, v0, v3

    const-string v1, "\ud56d\ubb38 \uc139\uc2a4"

    aput-object v1, v0, v4

    const-string v1, "\uc544\uc2dc\uc544"

    aput-object v1, v0, v5

    const-string v1, "\ud070 \uac00\uc2b4 "

    aput-object v1, v0, v6

    const-string v1, "\uae08\ubc1c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uac08\uc0c9 \uba38\ub9ac "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uc720\uba85\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ub51c\ub3c4 \uc790\uc704"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud751\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud398\ud2f0\uc2dc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uadf8\ub8f9 \uc139\uc2a4 "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud558\ub4dc \ubb3c "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\uc560\ub2c8\uba54\uc774\uc158 "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ub2e4\ub978\ub098\ub77c \uc0ac\ub78c\ub07c\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ub77c\ud2f4\uc778 "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ub808\uc988\ube44\uc5b8 "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uc131\uc219\ud55c "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\uc544\uc90c\ub9c8\ub4e4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\uc57c\ub3d9 \ubc30\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\uc57d\ud55c \uc57c\ub3d9"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\uccad\uc18c\ub144"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud6d4\uccd0\ubcf4\uae30"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uc77c\ubc18\uc778"

    aput-object v1, v0, v3

    const-string v1, "\ud56d\ubb38 \uc139\uc2a4"

    aput-object v1, v0, v4

    const-string v1, "\uc544\uc2dc\uc544"

    aput-object v1, v0, v5

    const-string v1, "\uc5c9\ub369\uc774"

    aput-object v1, v0, v6

    const-string v1, "\uadc0\uc5ec\uc6b4\ub144"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\ub6b1\ub140"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc655\uc790\uc9c0 "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud070 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ube44\ud0a4\ub2c8 "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uae08\ubc1c "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uac08\uc0c9 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\uc720\uba85 \uc778\uc0ac"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\uc9c8\ub0b4 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ub304\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud751\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud398\ud2f0\uc2dc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\uc5fd\uae30\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ub3d9\uc131 \uc560\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\uadf8\ub8f9 \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\ub300\uc2e0\ub538\uccd0\uc8fc\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud558\ub4dc\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\uc560\ub2c8\uba54\uc774\uc158"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ub2e4\ub978\ub098\ub77c \uc0ac\ub78c\ub07c\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\ub77c\ud2f4\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\ub808\uc988\ube44\uc5b8"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\uc790\uc704"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\uc131\uc219\ud55c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\uc544\uc90c\ub9c8\ub4e4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\uc57c\ub3d9 \ubc30\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ubcf4\ub294\uc0ac\ub78c \uc2dc\uc810"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\uacf5\uacf5 \uc7a5\uc18c\uc5d0\uc11c \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\ud604\uc2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ube68\uac04 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\uc2a4\ud2b8\ub9bd\uc1fc"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\uccad\uc18c\ub144"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\uc139\uc2a4 \ud1a0\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\uc624\ub798\ub41c \uc601\uc0c1"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\ud6d4\uccd0\ubcf4\uae30"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uc77c\ubc18\uc778"

    aput-object v1, v0, v3

    const-string v1, "\ud56d\ubb38 \uc139\uc2a4"

    aput-object v1, v0, v4

    const-string v1, "\uc544\uc2dc\uc544"

    aput-object v1, v0, v5

    const-string v1, "\uad6c\uac15 \uc131\uad50"

    aput-object v1, v0, v6

    const-string v1, "\ud751\uc778"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\uc5d0\ub85c\ud2f1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\ud398\ud2f0\uc26c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud558\ub4dc\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ub77c\ud2f4\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ub808\uc988\ube44\uc5b8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uc131\uc219\ud55c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uc2a4\ud2b8\ub9bd\uc1fc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\uccad\uc18c\ub144"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\uc77c\ubcf8\uc5b4 AV"

    aput-object v1, v0, v3

    const-string v1, "\ud070 \uac00\uc2b4"

    aput-object v1, v0, v4

    const-string v1, "\uc544\ub0b4"

    aput-object v1, v0, v5

    const-string v1, "\ud6d4\uccd0\ubcf4\uae30"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "69\uc790\uc138"

    aput-object v1, v0, v4

    const-string v1, "\uad6c\uba4d"

    aput-object v1, v0, v5

    const-string v1, "\uc544\ub9c8\ucd94\uc5b4"

    aput-object v1, v0, v6

    const-string v1, "\ud56d\ubb38 \uc139\uc2a4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\uc560\ub2c8\uba54\uc774\uc158"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc544\ub78d\uc778"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uc544\uc2dc\uc544"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uc5c9\ub369\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uc5c9\ub369\uc774\ud565\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uc5c9\ub369\uc774 \ube68\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uc139\uc2a4 \ud589\uc704\uc790\ub97c \uc704\ud574 \uc544\uc774\ub97c \ub3cc\ubd10 \uc8fc\ub294 \uc5ec\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ubd80\ud480\ub2e4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ubd80\ub784 \ud565\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud574\ubcc0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud070 \uc5c9\ub369\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uc655\uc790\uc9c0 "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uc790\uc5f0\uc0b0 "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud070\uac00\uc2b4 "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ube44\ud0a4\ub2c8"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\uc591\uc131 \uc560\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\ud751\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\ud751\uc778 \uc5c9\ub369\uc774 "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\uac80\uc740 \uba38\ub9ac "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\ub208\uac00\ub9ac\uace0"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\uae08\ubc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\ubc30\uc5d0\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\ub178\uc608\ubb3c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\ubd80\uce20"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\uce58\uc544 \uad50\uc815\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\ube0c\ub808\uc774\ub4dc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\uac08\uc0c9 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\uc5ec\ub7ec\ub0a8\uc790 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\ubc84\uc2a4\uc5d0\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\uac00\ub46c\ub193\uace0"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\uce90\uc2a4\ud305"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\uce58\uc5b4 \ub9ac\ub354"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\ub6b1\ubcf4"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\uac00\uae4c\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\uace0\ucd94 \ube68\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\ucf58\ub3d4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\ucf54\ub974\uc14b"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\uc9c8\ub0b4\uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\uc815\uc561 \uc794"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " \uad6c\uac15 \uc0ac\uc815 "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\uc5c9\ub369\uc774\uc5d0 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\ubc1c\uc704\uc5d0 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\uac00\uc2b4\uc704\uc5d0 \uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\uc815\uc561 \uc0bc\ud0a4\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\uc815\uc561 \uad50\ud658"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\uac1c \ubaa9\uac78\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\ub3c4\uae30 \uc2a4\ud0c0\uc77c"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "2\ub3001 \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\uc5d0\ub85c\ud2f1"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\ub178\ucd9c\uc99d"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\uc5bc\uad74\uc5d0 \uc549\uc544\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\uc5bc\uad74"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\ub6b1\ub6b1\ud55c"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\ud398\ud2f0\uc26c"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\uc190\uac00\ub77d"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\uc5b4\ub9dd"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\uc8fc\uba39 \uc0bd\uc785 "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\ub2e4\ub8e8\uae30 \uc26c\uc6b4 "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\uc74c\uc2dd"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\ubc11 \ubd80\ubd84"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\uc724\uac04\ud558\ub2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\uc785\uc744 \ud06c\uac8c \ubc8c\ub9ac\ub2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\uac00\ud130 \ubca8\ud2b8"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\ub3d9\uc131 \uc560\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\uc5ec\uc790\uac00 \ub0a8\uc790\ub791 \uc139\uc2a4\ud558\ub2e4"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\uc548\uacbd"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\uc7a5\uac11"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\uad11\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\ud560\uba38\ub2c8"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\uadf8\ub8f9 \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\uace0\ubb34"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\uccb4\uc721"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\ud138\uc774 \ub9ce\uc740"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\uc218\uc74c"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\ubaa8\uc790"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\uace0\ud654\uc9c8"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\ud558\uc774\ud790"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\uc8fc\ubd80"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\ud070 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\uac70\ub300\ud55c \uc7a5\ub09c\uac10"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\uc778\ub3c4\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\uc0bd\uc785"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\ub2e4\ub978 \ub098\ub77c \uc0ac\ub78c \ub07c\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\uc790\ucfe0\uc9c0"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\uccad\ubc14\uc9c0"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\ud0a4\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\ubd80\uc5cc"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\uc720\uc81c"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\ub77c\ud2f4\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\ub808\uc988\ube44\uc5b8"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\ub780\uc81c\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\uae34 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\uae30\uacc4"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\ud558\ub140"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\ub9c8\uc2a4\ud06c"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\ub9c8\uc0ac\uc9c0"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\uc790\uc704"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\uc131\uc219"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\uc131\uc219\ud55c \ub6b1\ub140 "

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\ud63c\ub3c8 "

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\uacfc\'\ub09c\uc7c1\uc774 "

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\uc544\uc90c\ub9c8"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\uc6b0\uc720"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\uac70\uc6b8"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\ubcf5\ud569\uc801\uc778 \uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\ub204\ub4dc"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\uac04\ud638\uc0ac"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\uae30\ub984\uc744 \ubc14\ub978"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\uc80a\uc740\uc0ac\ub78c\uacfc \ub178\uc778"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\uc544\ube60\ub791 \ub538\uc774\ub791"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\uc80a\uc740 \ub808\uc988\ube44\uc5b8\uacfc \ub299\uc740 \ub808\uc988\ube44\uc5b8"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\uc5c4\ub9c8\ub791 \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\uc704\uc5d0\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\ubcf4\uc9c0 \ubc8c\ub9ac\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\ucd95\uc81c"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\uc57c\uc678"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\ucc3d\ubc31\ud55c"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\ud32c\ud2f0"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\ud32c\ud2f0 \uc2a4\ud0c0\ud0b9"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\ucc9c\uacf5"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\uba38\ub9ac\ub760"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\uc2a4\ucffc\ud2b8 \ud32c"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\ud480"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\ud3ec\ub974\ub178 \uc2a4\ud0c0"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\uc790\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\uc784\uc2e0"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\uc9c8\uc744 \ube60\ub294\ub370"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\uc9c8 \uad6c\uac15 \uc131\uad50"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\ube68\uac04 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\ub2ec\ub824\ub77c"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\uac70\uce5c \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\ucc98\uc9c4 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\uc5ec\ud559\uc0dd"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\uc11c\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\uc139\uc2dc"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\uc544\ub2c8\uc624"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\ud558\ud504"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\ub2e8\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\uc9e7\uc740 \uba38\ub9ac"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\uc0e4\uc6cc"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\uc791\uc740 \uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\ud761\uc5f0"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\uc591\ub9d0"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\ud63c\uc790\uc11c"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\uccb4\ubc8c"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\uc0ac\uc815"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\uc2a4\ud0c0\ud0b9"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\ubc88\ub4e4"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\uc2a4\ud2b8\ub9bd"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\uc218\uc601\uc7a5"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\uc120\ud0e0"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\ubb38\uc2e0"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\ud2f0\uc988"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\uccad\uc18c\ub144"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\ud328\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "3\uba85\uc5d0\uc11c \uc139\uc2a4"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\uadf8\ub7ac\uc9c0"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\ud0c0\uc774"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\uac00\uc2b4 \ud565\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\uac00\uc2b4"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\ud654\uc7a5\uc2e4"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\uc7a5\ub09c\uac10"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\ud2b8\ub79c\uc2a4 \uc820\ub354"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\uc720\ub2c8\ud3fc"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\uce58\ub9c8 \ubcf4\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\uc57c\ucc44"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\uc624\ub798\ub41c \uc601\uc0c1"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\ud6d4\uccd0\ubcf4\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\uc816\uc740"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\ud754\ub4e4\uae30"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\ud751\uc778\uc774\ub791 \ubc31\uc778\uc774\ub791 \uc131\uad50"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_15e1
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d04

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "Asian"

    aput-object v1, v0, v5

    const-string v1, "Arsch"

    aput-object v1, v0, v6

    const-string v1, "Babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Big Dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Dicke Titten"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Blondine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Blasen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Bondage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "br\u00fcnett"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Camel Toe"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Sahnetorte"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Sperma"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Tanzen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Double Penetration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Ebenholz"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "frau freundlich"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Fetisch"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Homosexuell"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lesbisch"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "reifen"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MILF"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Orgie"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Party"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Pornostar"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "POV"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Wirklichkeit"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "roter Kopf"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Rough Sex"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Kleine Titten"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "spritzen"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Flotter Dreier"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Spielzeug"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Webcam"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asiatisch"

    aput-object v1, v0, v5

    const-string v1, "Dicke Titten"

    aput-object v1, v0, v6

    const-string v1, "Blondine"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Blasen"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "br\u00fcnett"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Dildo Toys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ebenholz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Fetisch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Gruppe"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Hentai"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lesbisch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "reifen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MILF"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Porno-Stars"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Softcore"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "Asian"

    aput-object v1, v0, v5

    const-string v1, "Arsch"

    aput-object v1, v0, v6

    const-string v1, "Babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Big Dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Big Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Blondine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Blasen"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "br\u00fcnett"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Sahnetorte"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "abspritzen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Tanzen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Ebenholz"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Fetisch"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "lustig"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Homosexuell"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Gruppe"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Rassen"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lesbisch"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "reifen"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MILF"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Pornostar"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "POV"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Wirklichkeit"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "rothaarig"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Teen 18"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Spielzeug"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "Asian"

    aput-object v1, v0, v5

    const-string v1, "Blasen"

    aput-object v1, v0, v6

    const-string v1, "Ebony"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "erotisch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fetisch"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lesbisch"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reifen"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Strip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "teen"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "japanische av"

    aput-object v1, v0, v3

    const-string v1, "big tits"

    aput-object v1, v0, v4

    const-string v1, "ehefrau"

    aput-object v1, v0, v5

    const-string v1, "voyeur"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "All Holes"

    aput-object v1, v0, v5

    const-string v1, "Amateur"

    aput-object v1, v0, v6

    const-string v1, "Anal"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Araber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Asian"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Arsch zu Mund"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Asslicking"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Babysitter"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Luftballons"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Balls Lecken"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Beach"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Big Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Big Cock"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Big Naturals"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Big Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Bi"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Black Booty"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Black Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Augenbinde"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Blond"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Blasen"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Boot"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Bondage"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Boots"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Hosentr\u00e4ger"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Z\u00f6pfe"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Brown Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Bus"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Cage"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Casting"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Cheerleader"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chubby"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Nahaufnahme"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Cock Suckers"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Condom"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Korsett"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Sahnetorte"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Cum Glass"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Sperma im Mund"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Cum On Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Cum On Feet"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Cum On Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Schlucken"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Abspritzen"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Cumswap"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Hundehalsband"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Doggystyle"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "DP"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Erotica"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Exhibitionismus"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Face-Sitting"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Facial"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Fett"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Fetisch"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Fingern"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Fischnetz"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Fisting"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Flexible"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Food"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Fu\u00df"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Gangbang"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "klaffen"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Strapsg\u00fcrtel"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Homosexuell"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Girl Fucks Guy"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Brille"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Handschuhe"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Gonzo"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Oma"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Gruppe"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Gum"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Gym"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hairy"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Handarbeit"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Hut"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "High Definition"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "High Heels"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Hausfrau"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Huge Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Huge Toys"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Indian"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Einlagen"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Rassen"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Jacuzzi"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Jeans"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "K\u00fcssen"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "K\u00fcche"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Latex"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "lesbisch"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Lingerie"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Long Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Zofen"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Maske"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Massage"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Reife"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Fat Mature"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Orgien"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Midget"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "MILF"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Milk"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Mirror"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Multiple Blasen"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Non Nude"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Nurse"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "ge\u00f6lt"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Old Junge 3some"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Old Junger Vater"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Old Young Lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Old Junge Mutter"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "On Top"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Open Pussy"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Orgasmus"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Pale"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "H\u00f6schen"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Nylons"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Piercing"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Pigtails"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Pissing"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Pool"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Pornostar"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "POV"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Schwanger"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Pussy Fucking"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Muschi lecken"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Pussy zum Mund"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rides"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rough Sex"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Saggy Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Schulm\u00e4dchen"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Secretary"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Sexy"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Rasiert"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Transen"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Short"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Short Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Dusche"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Smalltits"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Rauchen"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Socks"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Spanking"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Squirting"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Str\u00fcmpfe"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Strap-on"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Stripper"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Schwimmbad"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Gebr\u00e4unt"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Tattoo"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Teasing"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Teen"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Thong"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Flotter Dreier"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Throat-fucking"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Tie"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Tit Lecken"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Titjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Toilette"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Toys"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Transvestit"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Uniform"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Unter den Rock geschaut"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Gem\u00fcse"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Vintage"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Voyeur"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Wet"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Auspeitschen"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Wei\u00df auf Schwarz"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_1d04
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2427

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9e\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5c41\u80a1"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u9670\u8396"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u91d1\u767c\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6346\u7d81"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8910\u9aee\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u984f\u5c04"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7dca\u8eab\u88dd"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u526a\u8f2f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u611b\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u8df3\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u96d9\u9f8d\u5165\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u70cf\u9ed1\u7684"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u6b50\u6d32"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5973\u6027\u53cb\u597d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u6200\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u52d5\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u8de8\u7a2e\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u5973\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u72c2\u6b61"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u91ce\u5916\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u760b\u72c2\u6d3e\u5c0d"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u9ed1\u4eba\u8272\u60c5\u7247"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u73fe\u5be6"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u7d05\u982d"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u7c97\u66b4\u7684\u6027\u884c\u70ba"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u5c0f\u4e73\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u6f6e\u5439"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u812b\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u9752\u5c11\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u4e09\u4eba\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u9053\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5077\u7aba"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9e\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5976"

    aput-object v1, v0, v6

    const-string v1, "\u91d1\u767c\u5973\u90ce"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u8910\u9aee\u5973\u90ce"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5047\u9670\u8396"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6200\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u7fa4\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u52d5\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u8de8\u7a2e\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5973\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u8edf\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5077\u7aba"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9e\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5c41\u80a1"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u9670\u8396"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6bd4\u57fa\u5c3c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u91d1\u767c\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8910\u9aee\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u611b\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u5c04\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u8df3\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u9ed1\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6200\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u6ed1\u7a3d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u7537\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u96c6\u5718"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u9435\u687f"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u52d5\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u8de8\u7a2e\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u5973\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u81ea\u62cd"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u516c\u5171\u5834\u5408\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u73fe\u5be6"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u7d05\u767c"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u812b\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u6027\u611b\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u5077\u7aba"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9e\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u53e3\u4ea4"

    aput-object v1, v0, v6

    const-string v1, "\u9ed1\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u8272\u60c5\u4f5c\u54c1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6200\u7269\u7656"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5973\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u719f\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u812b\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u65e5\u672cAV"

    aput-object v1, v0, v3

    const-string v1, "\u5de8\u4e73"

    aput-object v1, v0, v4

    const-string v1, "\u4eba\u59bb"

    aput-object v1, v0, v5

    const-string v1, "\u5077\u62cd"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "\u6240\u6709\u7684\u6d1e"

    aput-object v1, v0, v5

    const-string v1, "\u696d\u9918"

    aput-object v1, v0, v6

    const-string v1, "\u809b\u9580"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u52d5\u756b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u963f\u62c9\u4f2f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e9e\u6d32"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u9a62"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9a62\u5634"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5c41\u80a1\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u6c23\u7403"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7403\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u6d77\u7058"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5927\u5c41\u80a1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5927\u516c\u96de"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5927\u7f8e"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u6bd4\u57fa\u5c3c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u96d9\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u9ed1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u9ed1\u8272\u6230\u5229\u54c1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u9ed1\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u773c\u7f69"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u91d1\u767c\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u8239"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5974\u5f79"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u9774\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u62ec\u865f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u8fae\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u68d5\u8272\u982d\u9aee"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u984f\u5c04"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u5df4\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u7c60"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u9444\u9020"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u5566\u5566\u968a\u9577"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u5c0f\u80d6"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u7279\u5beb"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u516c\u96de\u5438\u76e4"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u5b89\u5168\u5957"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u7dca\u8eab\u80f8\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u611b\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u5c04\u7cbe\u73bb\u7483"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u53e3\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u9a62"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u8173\u66a8"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u5976\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5c04\u7cbe\u71d5\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u5c04\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u66a8\u4ea4\u63db"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u72d7\u9805\u5708"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u72d7\u4ed4\u5f0f"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u96d9\u967d\u5177\u63d2\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u6625\u5bae"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u66b4\u9732\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u5750\u5728\u81c9\u4e0a"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u81c9\u90e8"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u80d6"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u6200\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u624b\u6307"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u6f01\u7db2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u62f3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u9748\u6d3b"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u98df\u7269"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u8173"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u525b\u7830"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u5f35\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u540a\u896a\u5e36"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u5c11\u5973\u4e82\u641e\u7537\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u773c\u93e1"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u624b\u5957"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u8ca2\u624e"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u5976\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u7fa4\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u81a0"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u9ad4\u80b2"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u5927\u9598\u87f9"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u5e3d\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u9ad8\u6e05\u6670\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u9ad8\u8ddf\u978b"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\u5bb6\u5ead\u4e3b\u5a66"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u5de8\u5927\u7684\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u5de8\u5927\u7684\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u5370\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u63d2\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u8de8\u7a2e\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u6309\u6469\u6d74\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u725b\u4ed4\u8932"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u63a5\u543b"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u5eda\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u4e73\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u5973\u6027\u5167\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u9577\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u6a5f\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u5973\u50ad"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u9762\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u6309\u6469"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u6210\u719f\u7684\u80d6\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u6df7\u4e82"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u4f8f\u5112"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u725b\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u93e1\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u591a\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u975e\u88f8\u9ad4"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u5c0f\u8b77\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u5857\u6cb9"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f153p"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u8001\u7684\u7236\u89aa\u8ddf\u5e74\u8f15\u7684\u5973\u5152"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f15\u7684\u5973\u540c\u6027\u6200"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f15\u7684\u6bcd\u89aa"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u4e0a\u982d"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u958b\u653e\u7684\u9670\u9053"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u72c2\u6b61"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\u6236\u5916"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u84bc\u767d"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u5167\u8932"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u9023\u8932\u896a"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u7a7f\u5b54"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u8fae\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u8e72\u4fbf\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u81ea\u62cd"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u61f7\u5b55"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u505a\u611b"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u8214\u9670\u9053"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u9670\u9053\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\u7d05\u767c"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u9a0e"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\u7c97\u66b4\u7684\u6027"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u4e0b\u5782\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u5973\u5b78\u751f"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u79d8\u66f8"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\u6027\u611f"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u7121\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u4eba\u5996"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u77ed"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u77ed\u767c"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u6dcb\u6d74"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\u5c0f\u4e73\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u5438\u7159"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u896a\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u7368\u594f"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u6253\u5c41\u80a1"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u7d72\u896a"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u6346\u7d81"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\u812b\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u6e38\u6cf3\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\u97a3\u5236"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u7d0b\u8eab"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\u6232\u5f04"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u5c11\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u4e09\u4eba\u884c"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u6df1\u5589"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u7d10\u5e36"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u4e73\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u4e73\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u5ec1\u6240"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\u6613\u88dd\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u5236\u670d"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u6380\u88d9"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\u852c\u83dc"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\u5077\u7aba"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u6fd5"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u97ad\u6253"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u767d\u4eba\u8ddf\u9ed1\u4eba\u505a\u611b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_2427
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4a

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9a\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5c41\u80a1"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u9634\u830e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u91d1\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6346\u7ed1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8910\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u989c\u5c04"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7d27\u8eab\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u526a\u8f91"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u7231\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u8df3\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u53cc\u9f99\u5165\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u4e4c\u9ed1\u7684"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u6b27\u6d32"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5973\u6027\u53cb\u597d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u604b\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u52a8\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u8de8\u79cd\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u5973\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u72c2\u6b22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u91ce\u5916\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u75af\u72c2\u6d3e\u5bf9"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u9ed1\u4eba\u8272\u60c5\u7247"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u73b0\u5b9e"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u7ea2\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u7c97\u66b4\u7684\u6027\u884c\u4e3a"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u5c0f\u4e73\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u6f6e\u5439"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u8131\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u9752\u5c11\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u4e09\u4eba\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u9053\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5077\u7aa5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9a\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5976"

    aput-object v1, v0, v6

    const-string v1, "\u91d1\u53d1\u5973\u90ce"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u8910\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5047\u9634\u830e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u604b\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u7fa4\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u52a8\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u8de8\u79cd\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5973\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u8f6f\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5077\u7aa5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9a\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u5c41\u80a1"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9ed1\u4eba\u719f\u5973"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u9634\u830e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6bd4\u57fa\u5c3c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u91d1\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8910\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7231\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u5c04\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u8df3\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u9ed1\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u604b\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u6ed1\u7a3d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u7537\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u96c6\u56e2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u94c1\u6746"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u52a8\u6f2b"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u8de8\u79cd\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u5973\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u81ea\u200b\u200b\u62cd"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u516c\u5171\u573a\u5408\u6027\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u73b0\u5b9e"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u7ea2\u53d1"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u8131\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u6027\u7231\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u5077\u7aa5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7d20\u4eba"

    aput-object v1, v0, v3

    const-string v1, "\u809b\u4ea4"

    aput-object v1, v0, v4

    const-string v1, "\u4e9a\u6d32"

    aput-object v1, v0, v5

    const-string v1, "\u53e3\u4ea4"

    aput-object v1, v0, v6

    const-string v1, "\u9ed1\u4eba"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u8272\u60c5\u4f5c\u54c1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u604b\u7269\u7656"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u786c\u8272\u60c5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5973\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u719f\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8131\u8863\u821e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u65e5\u672cAV"

    aput-object v1, v0, v3

    const-string v1, "\u5de8\u4e73"

    aput-object v1, v0, v4

    const-string v1, "\u4eba\u59bb"

    aput-object v1, v0, v5

    const-string v1, "\u5077\u62cd"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "\u6240\u6709\u7684\u6d1e"

    aput-object v1, v0, v5

    const-string v1, "\u4e1a\u4f59"

    aput-object v1, v0, v6

    const-string v1, "\u809b\u95e8"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u52a8\u753b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u963f\u62c9\u4f2f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e9a\u6d32"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u9a74"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9a74\u5634"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5c41\u80a1\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u6c14\u7403"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7403\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u6d77\u6ee9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5927\u5c41\u80a1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5927\u516c\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5927\u7f8e"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5927\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u6bd4\u57fa\u5c3c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u53cc\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u9ed1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u9ed1\u8272\u6218\u5229\u54c1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u9ed1\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u773c\u7f69"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u91d1\u53d1\u5973\u90ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u8239"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5974\u5f79"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u9774\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u62ec\u53f7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u8fab\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u68d5\u8272\u5934\u53d1"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u989c\u5c04"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u5df4\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u7b3c"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u94f8\u9020"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u5566\u5566\u961f\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u5c0f\u80d6"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u7279\u5199"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u516c\u9e21\u5438\u76d8"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u5b89\u5168\u5957"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u7d27\u8eab\u80f8\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u7231\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u5c04\u7cbe\u73bb\u7483"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u53e3\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u9a74"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u811a\u66a8"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u5976\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5c04\u7cbe\u71d5\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u5c04\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u66a8\u4ea4\u6362"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u72d7\u9879\u5708"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u72d7\u4ed4\u5f0f"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u53cc\u9633\u5177\u63d2\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u6625\u5bab"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u66b4\u9732\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u5750\u5728\u8138\u4e0a"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u8138\u90e8"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u80d6"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u604b\u7269\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u624b\u6307"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u6e14\u7f51"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u62f3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u7075\u6d3b"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u98df\u7269"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u811a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u521a\u7830"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u5f20\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u540a\u889c\u5e26"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u5c11\u5973\u4e71\u641e\u7537\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u773c\u955c"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u624b\u5957"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u8d21\u624e"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u5976\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u7fa4\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u80f6"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u4f53\u80b2"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u5927\u95f8\u87f9"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u624b\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u5e3d\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u9ad8\u6e05\u6670\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u9ad8\u8ddf\u978b"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\u5bb6\u5ead\u4e3b\u5987"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u5de8\u5927\u7684\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u5de8\u5927\u7684\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u5370\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u63d2\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u8de8\u79cd\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u6309\u6469\u6d74\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u725b\u4ed4\u88e4"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u63a5\u543b"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u53a8\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u4e73\u6db2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u62c9\u4e01"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u5973\u6027\u5185\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u957f\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u673a\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u5973\u4f63"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u9762\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u6309\u6469"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u81ea\u6170"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u6210\u719f\u7684\u80d6\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u6df7\u4e71"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u4f8f\u5112"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u4eba\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u725b\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u955c\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u591a\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u975e\u88f8\u4f53"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u5c0f\u62a4\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u6d82\u6cb9"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f7b3p"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u8001\u7684\u7236\u4eb2\u8ddf\u5e74\u8f7b\u7684\u5973\u513f"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f7b\u7684\u5973\u540c\u6027\u604b"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u8001\u7684\u8ddf\u5e74\u8f7b\u7684\u6bcd\u4eb2"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u4e0a\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u5f00\u653e\u7684\u9634\u9053"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u72c2\u6b22"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\u6237\u5916"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u82cd\u767d"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u5185\u88e4"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u8fde\u88e4\u889c"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u7a7f\u5b54"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u8fab\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u8e72\u4fbf\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\u8272\u60c5\u660e\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u81ea\u200b\u200b\u62cd"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u6000\u5b55"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u505a\u7231"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u8214\u9634\u9053"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u9634\u9053\u53e3\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\u7ea2\u53d1"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u9a91"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\u7c97\u66b4\u7684\u6027"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u4e0b\u5782\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u5973\u5b66\u751f"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u79d8\u4e66"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\u6027\u611f"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u65e0\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u4eba\u5996"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u77ed"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u77ed\u53d1"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u6dcb\u6d74"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\u5c0f\u4e73\u623f"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u5438\u70df"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u889c\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u72ec\u594f"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u6253\u5c41\u80a1"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u4e1d\u889c"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u6346\u7ed1"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\u812b\u8863"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u6e38\u6cf3\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\u97a3\u5236"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u7eb9\u8eab"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\u620f\u5f04"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u5c11\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u4e09\u4eba\u884c"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u6df1\u5589"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u7ebd\u5e26"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u4e73\u8214"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u4e73\u4ea4"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u5395\u6240"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u73a9\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\u6613\u88c5\u7656"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u5236\u670d"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u6380\u88d9"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\u852c\u83dc"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\u5077\u7aa5"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u6e7f"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u97ad\u6253"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u767d\u4eba\u8ddf\u9ed1\u4eba\u505a\u7231"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_2b4a
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326d

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u30d7\u30ec\u30fc\u30f3"

    aput-object v1, v0, v3

    const-string v1, "\u30a2\u30ca\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v1, v0, v4

    const-string v1, "\u30a2\u30b8\u30a2"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u304d\u306a\u304a\u5c3b"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u307d\u3063\u3061\u3083\u308a\u7cfb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u30da\u30cb\u30b9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u30df\u30eb\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u30d6\u30ed\u30f3\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u30d0\u30f3\u30c9\u30ea\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u30d6\u30eb\u30cd\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u3076\u3063\u304b\u3051"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u30bf\u30a4\u30c8\u30d5\u30a3\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u6709\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u30af\u30ea\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u611b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u30c0\u30f3\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u6d77\u306b\u30c0\u30d6\u30eb\u30c9\u30e9\u30b4\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u9ed2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u30e8\u30fc\u30ed\u30c3\u30d1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5973\u6027\u306b\u512a\u3057\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u30d5\u30a7\u30c1"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u30b2\u30a4"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u30d6\u30ed\u30c3\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u30cf\u30fc\u30c9\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u4eba\u7a2e"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u30e9\u30c6\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u30ec\u30ba\u30d3\u30a2\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u30de\u30b9\u30bf\u30fc\u30d9\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u30ab\u30fc\u30cb\u30d0\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u30ef\u30a4\u30eb\u30c9\u306a\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u30af\u30ec\u30a4\u30b8\u30fc\u00b7\u30d1\u30fc\u30c6\u30a3\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u30dd\u30eb\u30ce\u30b9\u30bf\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u9ed2\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u73fe\u5b9f"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u30ec\u30c3\u30c9\u30d8\u30c3\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u6fc0\u3057\u3044\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u5c0f\u3055\u306a\u80f8"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u6f6e\u304c\u5439\u3044\u3066\u3044\u308b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u30b9\u30c8\u30ea\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u82e5\u8005"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u30b9\u30ea\u30fc\u30b5\u30e0"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u5c0f\u9053\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u9ad8\u9f62\u8005"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u306e\u305e\u304d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u30d7\u30ec\u30fc\u30f3"

    aput-object v1, v0, v3

    const-string v1, "\u30a2\u30ca\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v1, v0, v4

    const-string v1, "\u30a2\u30b8\u30a2"

    aput-object v1, v0, v5

    const-string v1, "\u30df\u30eb\u30af"

    aput-object v1, v0, v6

    const-string v1, "\u30d6\u30ed\u30f3\u30c9"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u30cd\u30c3\u30c8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6709\u540d\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u507d\u30da\u30cb\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u307d\u3063\u3061\u3083\u308a\u7cfb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u30d5\u30a7\u30c6\u30a3\u30c3\u30b7\u30e5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u30b0\u30eb\u30fc\u30d7\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u30cf\u30fc\u30c9\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u4eba\u7a2e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u30e9\u30c6\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u30ec\u30ba\u30d3\u30a2\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6210\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u30dd\u30eb\u30ce\u30b9\u30bf\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u30bd\u30d5\u30c8\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u306e\u305e\u304d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u30d7\u30ec\u30fc\u30f3"

    aput-object v1, v0, v3

    const-string v1, "\u30a2\u30ca\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v1, v0, v4

    const-string v1, "\u30a2\u30b8\u30a2"

    aput-object v1, v0, v5

    const-string v1, "\u5927\u304d\u306a\u304a\u5c3b"

    aput-object v1, v0, v6

    const-string v1, "\u7f8e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u307d\u3063\u3061\u3083\u308a\u7cfb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u304d\u306a\u9670\u830e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u30df\u30eb\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u30d3\u30ad\u30cb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u30d6\u30ed\u30f3\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u6ce8\u5c04"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u611b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u30bb\u30ec\u30d6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u30cd\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u30c0\u30f3\u30b7\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u9ed2\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u30d5\u30a7\u30c6\u30a3\u30c3\u30b7\u30e5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u9762\u767d\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u30b2\u30a4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u30b0\u30eb\u30fc\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u30d6\u30ed\u30c3\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u30cf\u30fc\u30c9\u30b3\u30a2"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u4eba\u7a2e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u30e9\u30c6\u30f3\u8a9e"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u30ec\u30ba\u30d3\u30a2\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u30de\u30b9\u30bf\u30fc\u30d9\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u30dd\u30eb\u30ce\u30b9\u30bf\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u81ea\u5df1\u30d3\u30fc\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u516c\u5171\u306e\u5834\u6240\u3067\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u73fe\u5b9f"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u8d64\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u30b9\u30c8\u30ea\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u30bb\u30c3\u30af\u30b9\u306e\u304a\u3082\u3061\u3083"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u9ad8\u9f62\u8005"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u306e\u305e\u304d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u30d7\u30ec\u30fc\u30f3"

    aput-object v1, v0, v3

    const-string v1, "\u30a2\u30ca\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v1, v0, v4

    const-string v1, "\u30a2\u30b8\u30a2"

    aput-object v1, v0, v5

    const-string v1, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v1, v0, v6

    const-string v1, "\u9ed2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u30d5\u30a7\u30c6\u30a3\u30c3\u30b7\u30e5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u30cf\u30fc\u30c9\u30dd\u30eb\u30ce"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u30e9\u30c6\u30f3\u8a9e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u30ec\u30ba\u30d3\u30a2\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u719f\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u30b9\u30c8\u30ea\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5c11\u5973"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u65e5\u672c\u306eAV"

    aput-object v1, v0, v3

    const-string v1, "\u304a\u3063\u3071\u3044"

    aput-object v1, v0, v4

    const-string v1, "\u59bb"

    aput-object v1, v0, v5

    const-string v1, "\u306e\u305e\u304d"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3D"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "\u7a74"

    aput-object v1, v0, v5

    const-string v1, "\u30a2\u30de\u30c1\u30e5\u30a2"

    aput-object v1, v0, v6

    const-string v1, "\u809b\u9580"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u30a2\u30e9\u30d6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u30a2\u30b8\u30a2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u304a\u5c3b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u304a\u5c3b\u306e\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8210\u3081\u5c3b"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u30ca\u30cb\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u30d0\u30eb\u30fc\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u30dc\u30fc\u30eb\u3092\u8210\u3081\u308b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u30b6\u00b7\u30d3\u30fc\u30c1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5927\u304d\u306a\u304a\u5c3b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5de8\u6839"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u7c73\u56fd"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5de8\u4e73"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u30d3\u30ad\u30cb"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u30d0\u30a4\u30bb\u30af\u30b7\u30e3\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u9ed2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u9ed2\u306e\u6226\u5229\u54c1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u9ed2\u3044\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u30b4\u30fc\u30b0\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u30d6\u30ed\u30f3\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u8239"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5974\u96b7\u5236"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u30d6\u30fc\u30c4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u30d6\u30e9\u30b1\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u4e09\u3064\u7de8\u307f"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u8336\u8272\u306e\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u3076\u3063\u304b\u3051"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u30d0\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u30b1\u30fc\u30b8"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u92f3\u9020"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u30c1\u30a2\u30ea\u30fc\u30c0\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u307d\u3063\u3061\u3083\u308a"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u6a5f\u80fd"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u30b3\u30c3\u30af\u5438\u76e4"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u30b3\u30f3\u30c9\u30fc\u30e0"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u30b3\u30eb\u30bb\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u611b"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u5c04\u7cbe\u30ac\u30e9\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u53e3\u5185\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u30c9\u30f3\u30ad\u30fc\u30b3\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u8db3\u517c"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u30df\u30eb\u30af\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u5c04\u7cbe\u3092\u98f2\u307f\u8fbc\u3080"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u30a4\u30f3\u30b8\u30a7\u30af\u30b7\u30e7\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u517c\u30b9\u30ef\u30c3\u30d4\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u72ac\u306e\u9996\u8f2a"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u5f8c\u80cc\u4f4d"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u30c0\u30d6\u30eb\u30c7\u30a3\u30eb\u30c9\u633f\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u30a8\u30ed\u30c1\u30ab"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u9732\u51fa"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u5f7c\u306e\u9854\u306e\u4e0a\u306b\u5ea7\u3063\u3066"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u9854"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u8102\u80aa"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u30d5\u30a7\u30c6\u30a3\u30c3\u30b7\u30e5"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u6307"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u7db2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u30b9\u30c6\u30a3\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u67d4\u8edf\u306a"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u98df"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u8db3"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u30ae\u30e3\u30f3\u30b0\u30d0\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u30ac\u30fc\u30bf\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u30b2\u30a4"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u5c11\u5973\u306f\u7537\u3092\u30d5\u30a1\u30c3\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u30e1\u30ac\u30cd"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u30b0\u30ed\u30fc\u30d6"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u30cf\u30e1\u64ae\u308a"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u304a\u3070\u3042\u3061\u3083\u3093"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u30ae\u30e3\u30f3\u30b0\u30d0\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u30d7\u30e9\u30b9\u30c1\u30c3\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u30b9\u30dd\u30fc\u30c4"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u6bdb"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u624b\u306e\u8cc3\u91d1"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u5e3d\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u9ad8\u7cbe\u7d30"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u30cf\u30a4\u30d2\u30fc\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\u4e3b\u5a66"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u5049\u5927\u306a\u30df\u30eb\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u5049\u5927\u306a\u304a\u3082\u3061\u3083"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u30a4\u30f3\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u633f\u5165"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u4eba\u7a2e"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u30b8\u30e3\u30b0\u30b8\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u30b8\u30fc\u30f3\u30ba"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u30ad\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u30ad\u30c3\u30c1\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u30e9\u30c6\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u30e9\u30c6\u30f3\u8a9e"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u30b2\u30a4"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u30e9\u30f3\u30b8\u30a7\u30ea\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u9577\u3044\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u6a5f\u68b0"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u30e1\u30a4\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u30de\u30b9\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u30de\u30c3\u30b5\u30fc\u30b8"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u30aa\u30ca\u30cb\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u6210\u719f"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u6210\u719f\u3057\u305f\u592a\u3063\u305f\u5973\u6027"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u6df7\u6c8c"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u5c0f\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u59bb"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u30df\u30eb\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u30df\u30e9\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9\u3088\u308a\u3082"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u975e\u30cc\u30fc\u30c9"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u30ca\u30fc\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u30aa\u30a4\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u82e5\u30443P\u53e4\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u82e5\u3044\u5a18,\u4e00\u7dd2\u306b\u53e4\u3044\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u82e5\u3044\u30ec\u30ba\u30d3\u30a2\u30f3\u306e\u53e4\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u82e5\u3044\u6bcd\u89aa\u306e\u53e4\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u30c8\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u81a3\u3092\u958b\u304d\u307e\u3059"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u30ab\u30fc\u30cb\u30d0\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\u30a2\u30a6\u30c8\u30c9\u30a2"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u8584\u3044"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u4e0b\u7740"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u30d1\u30f3\u30b9\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u7a7f\u5b54"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u4e09\u3064\u7de8\u307f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u30b9\u30af\u30ef\u30c3\u30c8\u00b7\u30d1\u30f3"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u30d7\u30fc\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\u30dd\u30eb\u30ce\u30b9\u30bf\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u81ea\u5df1\u30d3\u30fc\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u598a\u5a20"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u8210\u3081\u308b\u81a3"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u30d7\u30c3\u30b7\u30fc,\u30aa\u30fc\u30e9\u30eb\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\u8d64\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u4e57\u99ac"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\u6fc0\u3057\u3044\u30bb\u30c3\u30af\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u305f\u308b\u307f\u30df\u30eb\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u5973\u5b50\u751f\u5f92"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u79d8\u66f8"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\u30bb\u30af\u30b7\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u3044\u3044\u3048"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u30cf\u30fc\u30d5"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u30b7\u30e7\u30fc\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u77ed\u3044\u9aea"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u30b7\u30e3\u30ef\u30fc"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\u5c0f\u3055\u306a\u80f8"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u55ab\u7159"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u9774\u4e0b"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u30bd\u30ed"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u30b9\u30d1\u30f3\u30ad\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u5c04\u7cbe"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u30b9\u30c8\u30c3\u30ad\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u30d0\u30f3\u30c9\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\u30b9\u30c8\u30ea\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u30b9\u30a4\u30df\u30f3\u30b0\u30d7\u30fc\u30eb"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\u65e5\u713c\u3051"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u523a\u9752"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\u3044\u3058\u3081"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u5c11\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u30d1\u30b9"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u30a4\u30d6\u30cb\u30f3\u30b0"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u30c7\u30a3\u30fc\u30d7\u30b9\u30ed\u30fc\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u30ea\u30f3\u30af"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u80f8\u8210\u3081\u308b"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u4e73"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u30c8\u30a4\u30ec"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u304a\u3082\u3061\u3083"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\u5973\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u5236\u670d"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u30b9\u30ab\u30fc\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\u91ce\u83dc"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\u9ad8\u9f62\u8005"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\u306e\u305e\u304d"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u30a6\u30a7\u30c3\u30c8"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u30db\u30a4\u30c3\u30d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u767d\u3001\u9ed2\u6027\u5225"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_326d
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bondage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "camel_toe"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cumshots"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "double_penetration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "female_friendly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "red_head"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "rough_sex"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "small_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "squirt"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "threesome"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "webcam"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "big_boobs"

    aput-object v1, v0, v6

    const-string v1, "blonde"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dildo_toys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "porn_stars"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "softcore"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "teen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "ass"

    aput-object v1, v0, v6

    const-string v1, "babe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bbw"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_dick"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "big_tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blonde"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "brunette"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "celebrity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "creampie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cumshot"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dancing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ebony"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "funny"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gay"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "group"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "hentai"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "milf"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pov"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "reality"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "striptease"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "teen_18"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "toys"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vintage"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "voyeur"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "amateur"

    aput-object v1, v0, v3

    const-string v1, "anal"

    aput-object v1, v0, v4

    const-string v1, "asian"

    aput-object v1, v0, v5

    const-string v1, "blowjob"

    aput-object v1, v0, v6

    const-string v1, "ebony"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "erotic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fetish"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latina"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mature"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "strip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "teen"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "japanese av"

    aput-object v1, v0, v3

    const-string v1, "big tits"

    aput-object v1, v0, v4

    const-string v1, "wife"

    aput-object v1, v0, v5

    const-string v1, "voyeur"

    aput-object v1, v0, v6

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    const/16 v0, 0xb3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3d"

    aput-object v1, v0, v3

    const-string v1, "69"

    aput-object v1, v0, v4

    const-string v1, "All Holes"

    aput-object v1, v0, v5

    const-string v1, "Amateur"

    aput-object v1, v0, v6

    const-string v1, "Anal"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Arab"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Asian"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ass To Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Asslicking"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Babysitters"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Balloons"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Balls Licking"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Beach"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Big Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Big Cock"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Big Naturals"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Big Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Bikini"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Bisexual"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Black Booty"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Black Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Blindfold"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Blonde"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Blowjob"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Boat"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Bondage"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Boots"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Braces"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Braids"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Brown Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Bukkake"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Bus"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Cage"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Casting"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Cheerleader"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chubby"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Closeup"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Cock Suckers"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Condom"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Corset"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Creampie"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Cum Glass"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Cum In Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Cum On Ass"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Cum On Feet"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Cum On Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Cum Swallow"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Cumshot"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Cumswap"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Dog Collar"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Doggystyle"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dp"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Erotica"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Exhibitionism"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Face-sitting"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Facial"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Fat"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Fetish"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Fingering"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Fishnet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Fisting"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Flexible"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Food"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Foot"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Gangbang"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Gape"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Garterbelt"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Gay"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Girl Fucks Guy"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Glasses"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Gloves"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Gonzo"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Granny"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Group"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Gum"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Gym"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hairy"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Handjob"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Hat"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "High Definition"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "High Heels"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Housewife"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Huge Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Huge Toys"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Indian"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Insertions"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Interracial"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Jacuzzi"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Jeans"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Kissing"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Kitchen"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Latex"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Latina"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Lingerie"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Long Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Maids"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Mask"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Massage"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Masturbation"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Mature"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Mature Fat"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Messy"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Midget"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Milf"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Milk"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Mirror"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Multiple Blowjobs"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Non Nude"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Nurse"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Oiled"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Old Young 3some"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Old Young Father"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Old Young Lesbian"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Old Young Mother"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "On Top"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Open Pussy"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Orgy"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Outdoor"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Pale"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Panties"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Pantyhose"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Piercing"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Pigtails"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Pissing"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Pool"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Pornstar"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Pov"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Pregnant"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Pussy Fucking"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Pussy Licking"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Pussy To Mouth"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Redhead"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rides"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rough Sex"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Saggy Tits"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Schoolgirl"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Secretary"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Sexy"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Shaved"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Shemale"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Short"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Short Hair"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Shower"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Smalltits"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Smoking"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Socks"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Spanking"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Squirting"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Stockings"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Strap-on"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Stripper"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Swimming-pool"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Tanned"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Tattoo"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Teasing"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Teen"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Thong"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Threesome"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Throat-fucking"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Tie"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Tit Licking"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Titjob"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Toilet"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Toys"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Transvestite"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Uniform"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Upskirt"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Vegetable"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Vintage"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Voyeur"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Wet"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Whipping"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "White On Black"

    aput-object v2, v0, v1

    iput-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    goto/16 :goto_72d

    :cond_3986
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_399f

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65

    :cond_399f
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "madthumbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39b8

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65

    :cond_39b8
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39cc

    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_tube8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39db

    :cond_39cc
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65

    :cond_39db
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "vidz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39f4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65

    :cond_39f4
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_spankwire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a0d

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65

    :cond_3a0d
    sget-object v0, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v1, "sextube_thisav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e65

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectChannel;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_e65
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    const/4 v0, 0x0

    sget-object v1, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v2, "pornhub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_pornhub:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    aget-object v0, v0, p3

    :goto_13
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "spankwire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_spankwire:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    aget-object v0, v0, p3

    :cond_25
    :goto_25
    sput-object v1, Lau/com/stklab/minepro/mineBeta;->currentCategory:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->switchChannel()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/SelectChannel;->finish()V

    return-void

    :cond_36
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "madthumbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_madthumbs:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_madthumbs:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_25

    :cond_49
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "tube8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_tube8:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_25

    :cond_5c
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "vidz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_vidz:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_vidz:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_25

    :cond_6f
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "sextube_spankwire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_spankwire:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_spankwire:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_25

    :cond_82
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "sextube_tube8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_tube8:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_tube8:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_25

    :cond_95
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "sextube_pornhub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_pornhub:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_pornhub:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto/16 :goto_25

    :cond_a9
    sget-object v2, Lau/com/stklab/minepro/mineBeta;->currentServer:Ljava/lang/String;

    const-string v3, "sextube_thisav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->channel_strs_thisav:[Ljava/lang/String;

    aget-object v1, v0, p3

    iget-object v0, p0, Lau/com/stklab/minepro/SelectChannel;->show_strs_thisav:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto/16 :goto_25

    :cond_bd
    move-object v1, v0

    goto/16 :goto_13
.end method
