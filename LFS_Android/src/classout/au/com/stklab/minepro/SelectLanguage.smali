.class public Lau/com/stklab/minepro/SelectLanguage;
.super Landroid/app/ListActivity;


# static fields
.field public static defaultLinkpage:Ljava/lang/StringBuilder;


# instance fields
.field private strs_language:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v2, "http://herpussy.com/?p=userverion&cache=gohomewithfatherandmotherandsister&dif=cliff"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "English"

    aput-object v1, v0, v3

    const-string v1, "\ud55c\uad6d\uc5b4"

    aput-object v1, v0, v4

    const-string v1, "Deutsch"

    aput-object v1, v0, v5

    const-string v1, "\u4e2d\u6587\uff08\u7e41\u9ad4\uff09"

    aput-object v1, v0, v6

    const-string v1, "\u4e2d\u6587\uff08\u7b80\u4f53\uff09"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u65e5\u672c\u8a9e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const-string v2, "English"

    aput-object v2, v1, v3

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const-string v2, "Korean"

    aput-object v2, v1, v4

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const-string v2, "Germany"

    aput-object v2, v1, v5

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const-string v2, "ChineseTradition"

    aput-object v2, v1, v6

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const-string v2, "ChineseSimplied"

    aput-object v2, v1, v7

    iget-object v1, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "Japanese"

    aput-object v3, v1, v2

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090006

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lau/com/stklab/minepro/SelectLanguage;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lau/com/stklab/minepro/SelectLanguage;->strs_language:[Ljava/lang/String;

    aget-object v0, v0, p3

    sput-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lau/com/stklab/minepro/SelectServer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectLanguage;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lau/com/stklab/minepro/SelectLanguage;->finish()V

    return-void
.end method
