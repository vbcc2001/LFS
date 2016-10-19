.class public Lau/com/stklab/minepro/MediaStore;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lau/com/stklab/minepro/MediaStore;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/MediaStore;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/MediaStore;->requestWindowFeature(I)Z

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/MediaStore;->setContentView(I)V

    return-void
.end method
