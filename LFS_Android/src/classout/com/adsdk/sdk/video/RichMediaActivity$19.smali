.class Lcom/adsdk/sdk/video/RichMediaActivity$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$19;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$19;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    return-void
.end method
