.class Lcom/adsdk/sdk/mraid/MraidDisplayController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .registers 4

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->close()V

    return-void
.end method
