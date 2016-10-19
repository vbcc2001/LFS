.class public Lau/com/stklab/minepro/StatusChecker;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/StatusChecker;->setContentView(I)V

    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/StatusChecker;->findViewById(I)Landroid/view/View;

    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/StatusChecker;->findViewById(I)Landroid/view/View;

    return-void
.end method
