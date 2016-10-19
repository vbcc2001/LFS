.class Lcom/adsdk/sdk/mraid/BaseActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/BaseActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/BaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseActivity;->finish()V

    return-void
.end method
