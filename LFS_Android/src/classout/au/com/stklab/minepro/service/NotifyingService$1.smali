.class Lau/com/stklab/minepro/service/NotifyingService$1;
.super Landroid/os/Binder;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/service/NotifyingService;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/service/NotifyingService;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/service/NotifyingService$1;->this$0:Lau/com/stklab/minepro/service/NotifyingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
