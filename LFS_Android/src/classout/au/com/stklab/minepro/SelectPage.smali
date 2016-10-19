.class public Lau/com/stklab/minepro/SelectPage;
.super Landroid/app/ListActivity;


# static fields
.field public static fuckFatherA:Ljava/lang/String;

.field public static fuckFatherB:Ljava/lang/String;

.field public static fuckFatherC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherA:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherB:Ljava/lang/String;

    sput-object v0, Lau/com/stklab/minepro/SelectPage;->fuckFatherC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x64

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_8
    const/16 v2, 0x63

    if-le v0, v2, :cond_18

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090006

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/SelectPage;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lau/com/stklab/minepro/mineBeta;->currentCategoryPage:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->switchPage()V

    invoke-virtual {p0}, Lau/com/stklab/minepro/SelectPage;->finish()V

    return-void
.end method
