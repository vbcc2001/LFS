.class Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
