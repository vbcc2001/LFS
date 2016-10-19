.class public Lcom/adsdk/sdk/mraid/MraidView;
.super Landroid/webkit/WebView;


# static fields
.field public static final AD_CONTAINER_LAYOUT_ID:I = 0x66

.field private static final LOGTAG:Ljava/lang/String; = "MraidView"

.field public static final MODAL_CONTAINER_LAYOUT_ID:I = 0x65

.field public static final PLACEHOLDER_VIEW_ID:I = 0x64


# instance fields
.field private mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

.field private mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private mHasFiredReadyEvent:Z

.field private mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

.field private final mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {p0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidView;->initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView;Ljava/net/URI;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView;->tryCommand(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return-void
.end method

.method private copyRawResourceToFilesDir(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_34
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_39} :catch_4b

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_3d
    :try_start_3d
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_54
    .catchall {:try_start_3d .. :try_end_40} :catchall_5e

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4f

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_66

    :goto_4a
    return-object v0

    :catch_4b
    move-exception v0

    const-string v0, ""

    goto :goto_4a

    :cond_4f
    const/4 v5, 0x0

    :try_start_50
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    goto :goto_3d

    :catch_54
    move-exception v0

    :try_start_55
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_6a

    :goto_5b
    const-string v0, ""

    goto :goto_4a

    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_65} :catch_68

    :goto_65
    throw v0

    :catch_66
    move-exception v1

    goto :goto_4a

    :catch_68
    move-exception v1

    goto :goto_65

    :catch_6a
    move-exception v0

    goto :goto_5b
.end method

.method private initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setScrollContainer(Z)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$1;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidBrowserController;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    return-void
.end method

.method private notifyOnFailureListener()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;->onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V

    :cond_11
    return-void
.end method

.method private tryCommand(Ljava/net/URI;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v1, v2, p0}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->createCommand(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_36
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidCommand;->execute()V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_23
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->destroy()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected fireChangeEventForProperties(Ljava/util/ArrayList;)V
    .registers 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fire changes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_b
.end method

.method protected fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidProperty;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fire change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method protected fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.fireErrorEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireNativeCommandCompleteEvent(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireReadyEvent()V
    .registers 2

    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    return-object v0
.end method

.method protected getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method public getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$9(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnCloseListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnExpandListener()Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnFailureListener()Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$11(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnReadyListener()Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$6(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    move-result-object v0

    return-object v0
.end method

.method protected injectJavaScript(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public loadHtmlData(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><head></head><body style=\'margin:0;padding:0;\'>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    const-string v0, "<head>"

    const-string v2, "<head><script>(function() {\n  var isIOS = (/iphone|ipad|ipod/i).test(window.navigator.userAgent.toLowerCase()); \n  if (isIOS) {\n    console = {};\n    console.log = function(log) {\n      var iframe = document.createElement(\'iframe\');\n      iframe.setAttribute(\'src\', \'ios-log: \' + log);\n      document.documentElement.appendChild(iframe);\n      iframe.parentNode.removeChild(iframe);\n      iframe = null;\n    };\n    console.debug = console.info = console.warn = console.error = console.log;\n  }\n}());\n\n(function() {\n  // Establish the root mraidbridge object.\n  var mraidbridge = window.mraidbridge = {};\n  \n  // Listeners for bridge events.\n  var listeners = {};\n  \n  // Queue to track pending calls to the native SDK.\n  var nativeCallQueue = [];\n  \n  // Whether a native call is currently in progress.\n  var nativeCallInFlight = false;\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.fireReadyEvent = function() {\n    mraidbridge.fireEvent(\'ready\');\n  };\n  \n  mraidbridge.fireChangeEvent = function(properties) {\n    mraidbridge.fireEvent(\'change\', properties);\n  };\n  \n  mraidbridge.fireErrorEvent = function(message, action) {\n    mraidbridge.fireEvent(\'error\', message, action);\n  };\n\n  mraidbridge.fireEvent = function(type) {\n    var ls = listeners[type];\n    if (ls) {\n      var args = Array.prototype.slice.call(arguments);\n      args.shift();\n      var l = ls.length;\n      for (var i = 0; i < l; i++) {\n        ls[i].apply(null, args);\n      }\n    }\n  };\n  \n  mraidbridge.nativeCallComplete = function(command) {\n    if (nativeCallQueue.length === 0) {\n      nativeCallInFlight = false;\n      return;\n    }\n    \n    var nextCall = nativeCallQueue.pop();\n    window.location = nextCall;\n  };\n  \n  mraidbridge.executeNativeCall = function(command) {\n    var call = \'mraid://\' + command;\n    \n    var key, value;\n    var isFirstArgument = true;\n    \n    for (var i = 1; i < arguments.length; i += 2) {\n      key = arguments[i];\n      value = arguments[i + 1];\n      \n      if (value === null) continue;\n      \n      if (isFirstArgument) {\n        call += \'?\';\n        isFirstArgument = false;\n      } else {\n        call += \'&\';\n      }\n      \n      call += key + \'=\' + escape(value);\n    }\n\n    if (nativeCallInFlight) {\n      nativeCallQueue.push(call);\n    } else {\n      nativeCallInFlight = true;\n      window.location = call;\n    }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.addEventListener = function(event, listener) {\n    var eventListeners;\n    listeners[event] = listeners[event] || [];\n    eventListeners = listeners[event];\n    \n    for (var l in eventListeners) {\n      // Listener already registered, so no need to add it.\n      if (listener === l) return;\n    }\n    \n    eventListeners.push(listener);\n  };\n\n  mraidbridge.removeEventListener = function(event, listener) {\n    if (listeners.hasOwnProperty(event)) {\n      var eventListeners = listeners[event];\n      if (eventListeners) {\n        var idx = eventListeners.indexOf(listener);\n        if (idx !== -1) {\n          eventListeners.splice(idx, 1);\n        }\n      }\n    }\n  };\n}());\n\n(function() {\n  var mraid = window.mraid = {};\n  var bridge = window.mraidbridge;\n  \n  // Constants. ////////////////////////////////////////////////////////////////////////////////////\n  \n  var VERSION = mraid.VERSION = \'1.0\';\n  \n  var STATES = mraid.STATES = {\n    LOADING: \'loading\',     // Initial state.\n    DEFAULT: \'default\',\n    EXPANDED: \'expanded\',\n    HIDDEN: \'hidden\'\n  };\n  \n  var EVENTS = mraid.EVENTS = {\n    ERROR: \'error\',\n    INFO: \'info\',\n    READY: \'ready\',\n    STATECHANGE: \'stateChange\',\n    VIEWABLECHANGE: \'viewableChange\'\n  };\n  \n  var PLACEMENT_TYPES = mraid.PLACEMENT_TYPES = {\n    UNKNOWN: \'inline\',\n    INLINE: \'inline\',\n    INTERSTITIAL: \'interstitial\'\n  };\n\n  // External MRAID state: may be directly or indirectly modified by the ad JS. ////////////////////\n\n  // Properties which define the behavior of an expandable ad.\n  var expandProperties = {\n    width: -1,\n    height: -1,\n    useCustomClose: false,\n    isModal: true,\n    lockOrientation: false\n  };\n\n  var hasSetCustomSize = false;\n\n  var hasSetCustomClose = false;\n \n  var listeners = {};\n\n  // Internal MRAID state. Modified by the native SDK. /////////////////////////////////////////////\n  \n  var state = STATES.LOADING;\n  \n  var isViewable = false;\n  \n  var screenSize = { width: -1, height: -1 };\n\n  var placementType = PLACEMENT_TYPES.UNKNOWN;\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  var EventListeners = function(event) {\n    this.event = event;\n    this.count = 0;\n    var listeners = {};\n    \n    this.add = function(func) {\n      var id = String(func);\n      if (!listeners[id]) {\n        listeners[id] = func;\n        this.count++;\n      }\n    };\n    \n    this.remove = function(func) {\n      var id = String(func);\n      if (listeners[id]) {\n        listeners[id] = null;\n        delete listeners[id];\n        this.count--;\n        return true;\n      } else {\n        return false;\n      }\n    };\n    \n    this.removeAll = function() {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) this.remove(listeners[id]);\n      }\n    };\n    \n    this.broadcast = function(args) {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) listeners[id].apply({}, args);\n      }\n    };\n    \n    this.toString = function() {\n      var out = [event, \':\'];\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) out.push(\'|\', id, \'|\');\n      }\n      return out.join(\'\');\n    };\n  };\n  \n  var broadcastEvent = function() {\n    var args = new Array(arguments.length);\n    var l = arguments.length;\n    for (var i = 0; i < l; i++) args[i] = arguments[i];\n    var event = args.shift();\n    if (listeners[event]) listeners[event].broadcast(args);\n  };\n  \n  var contains = function(value, array) {\n    for (var i in array) {\n      if (array[i] === value) return true;\n    }\n    return false;\n  };\n  \n  var clone = function(obj) {\n    if (obj === null) return null;\n    var f = function() {};\n    f.prototype = obj;\n    return new f();\n  };\n  \n  var stringify = function(obj) {\n    if (typeof obj === \'object\') {\n      var out = [];\n      if (obj.push) {\n        // Array.\n        for (var p in obj) out.push(obj[p]);\n        return \'[\' + out.join(\',\') + \']\';\n      } else {\n        // Other object.\n        for (var p in obj) out.push(\"\'\" + p + \"\': \" + obj[p]);\n        return \'{\' + out.join(\',\') + \'}\';\n      }\n    } else return String(obj);\n  };\n  \n  var trim = function(str) {\n    return str.replace(/^\\s+|\\s+$/g, \'\');\n  };\n  \n  // Functions that will be invoked by the native SDK whenever a \"change\" event occurs.\n  var changeHandlers = {\n    state: function(val) {\n      if (state === STATES.LOADING) {\n        broadcastEvent(EVENTS.INFO, \'Native SDK initialized.\');\n      }\n      state = val;\n      broadcastEvent(EVENTS.INFO, \'Set state to \' + stringify(val));\n      broadcastEvent(EVENTS.STATECHANGE, state);\n    },\n    \n    viewable: function(val) {\n      isViewable = val;\n      broadcastEvent(EVENTS.INFO, \'Set isViewable to \' + stringify(val));\n      broadcastEvent(EVENTS.VIEWABLECHANGE, isViewable);\n    },\n    \n    placementType: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set placementType to \' + stringify(val));\n      placementType = val;\n    },\n\n    screenSize: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set screenSize to \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) screenSize[key] = val[key];\n      }\n\n      if (!hasSetCustomSize) {\n        expandProperties[\'width\'] = screenSize[\'width\'];\n        expandProperties[\'height\'] = screenSize[\'height\'];\n      }\n    },\n    \n    expandProperties: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Merging expandProperties with \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) expandProperties[key] = val[key];\n      }\n    }\n  };\n  \n  var validate = function(obj, validators, action, merge) {\n    if (!merge) {\n      // Check to see if any required properties are missing.\n      if (obj === null) {\n        broadcastEvent(EVENTS.ERROR, \'Required object not provided.\', action);\n        return false;\n      } else {\n        for (var i in validators) {\n          if (validators.hasOwnProperty(i) && obj[i] === undefined) {\n            broadcastEvent(EVENTS.ERROR, \'Object is missing required property: \' + i + \'.\', action);\n            return false;\n          }\n        }\n      }\n    }\n    \n    for (var prop in obj) {\n      var validator = validators[prop];\n      var value = obj[prop];\n      if (validator && !validator(value)) {\n        // Failed validation.\n        broadcastEvent(EVENTS.ERROR, \'Value of property \' + prop + \' is invalid.\', \n          action);\n        return false;\n      }\n    }\n    return true;\n  };\n  \n  var expandPropertyValidators = {\n    width: function(v) { return !isNaN(v) && v >= 0; },\n    height: function(v) { return !isNaN(v) && v >= 0; },\n    useCustomClose: function(v) { return (typeof v === \'boolean\'); },\n    lockOrientation: function(v) { return (typeof v === \'boolean\'); }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  bridge.addEventListener(\'change\', function(properties) {\n    for (var p in properties) {\n      if (properties.hasOwnProperty(p)) {\n        var handler = changeHandlers[p];\n        handler(properties[p]);\n      }\n    }\n  });\n  \n  bridge.addEventListener(\'error\', function(message, action) {\n    broadcastEvent(EVENTS.ERROR, message, action);\n  });\n  \n  bridge.addEventListener(\'ready\', function() {\n    broadcastEvent(EVENTS.READY);\n  });\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraid.addEventListener = function(event, listener) {\n    if (!event || !listener) {\n      broadcastEvent(EVENTS.ERROR, \'Both event and listener are required.\', \'addEventListener\');\n    } else if (!contains(event, EVENTS)) {\n      broadcastEvent(EVENTS.ERROR, \'Unknown MRAID event: \' + event, \'addEventListener\');\n    } else {\n      if (!listeners[event]) listeners[event] = new EventListeners(event);\n      listeners[event].add(listener);\n    }\n  };\n  \n  mraid.close = function() {\n    if (state === STATES.HIDDEN) {\n      broadcastEvent(EVENTS.ERROR, \'Ad cannot be closed when it is already hidden.\',\n        \'close\');\n    } else bridge.executeNativeCall(\'close\');\n  };\n  \n  mraid.expand = function(URL) {\n    if (state !== STATES.DEFAULT) {\n      broadcastEvent(EVENTS.ERROR, \'Ad can only be expanded from the default state.\', \'expand\');\n    } else {\n      var args = [\'expand\'];\n      \n      if (hasSetCustomClose) {\n        args = args.concat([\'shouldUseCustomClose\', expandProperties.useCustomClose ? \'true\' : \'false\']);\n      }\n\n      if (hasSetCustomSize) {\n        if (expandProperties.width >= 0 && expandProperties.height >= 0) {\n          args = args.concat([\'w\', expandProperties.width, \'h\', expandProperties.height]);\n        }\n      }\n      \n      if (typeof expandProperties.lockOrientation !== \'undefined\') {\n        args = args.concat([\'lockOrientation\', expandProperties.lockOrientation]);\n      }\n\n      if (URL) {\n        args = args.concat([\'url\', URL]);\n      }\n      \n      bridge.executeNativeCall.apply(this, args);\n    }\n  };\n  \n  mraid.getExpandProperties = function() {\n    var properties = {\n      width: expandProperties.width,\n      height: expandProperties.height,\n      useCustomClose: expandProperties.useCustomClose,\n      isModal: expandProperties.isModal\n    };\n    return properties;\n  };\n  \n  mraid.getPlacementType = function() {\n    return placementType;\n  };\n  \n  mraid.getState = function() {\n    return state;\n  };\n  \n  mraid.getVersion = function() {\n    return mraid.VERSION;\n  };\n  \n  mraid.isViewable = function() {\n    return isViewable;\n  };\n  \n  mraid.open = function(URL) {\n    if (!URL) broadcastEvent(EVENTS.ERROR, \'URL is required.\', \'open\');\n    else bridge.executeNativeCall(\'open\', \'url\', URL);\n  };\n\n  mraid.removeEventListener = function(event, listener) {\n    if (!event) broadcastEvent(EVENTS.ERROR, \'Event is required.\', \'removeEventListener\');\n    else {\n      if (listener && (!listeners[event] || !listeners[event].remove(listener))) {\n        broadcastEvent(EVENTS.ERROR, \'Listener not currently registered for event.\', \n          \'removeEventListener\');\n        return;\n      } else if (listeners[event]) listeners[event].removeAll();\n      \n      if (listeners[event] && listeners[event].count === 0) {\n        listeners[event] = null;\n        delete listeners[event];\n      }\n    }\n  };\n  \n  mraid.setExpandProperties = function(properties) {\n    if (validate(properties, expandPropertyValidators, \'setExpandProperties\', true)) {\n      if (properties.hasOwnProperty(\'width\') || properties.hasOwnProperty(\'height\')) {\n        hasSetCustomSize = true;\n      }\n\n      if (properties.hasOwnProperty(\'useCustomClose\')) hasSetCustomClose = true;\n\n      var desiredProperties = [\'width\', \'height\', \'useCustomClose\', \'lockOrientation\'];\n      var length = desiredProperties.length;\n      for (var i = 0; i < length; i++) {\n        var propname = desiredProperties[i];\n        if (properties.hasOwnProperty(propname)) expandProperties[propname] = properties[propname];\n      }\n    }\n  };\n  \n  mraid.useCustomClose = function(shouldUseCustomClose) {\n    expandProperties.useCustomClose = shouldUseCustomClose;\n    hasSetCustomClose = true;\n    bridge.executeNativeCall(\'usecustomclose\', \'shouldUseCustomClose\', shouldUseCustomClose);\n  };\n}());</script>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/adsdk/sdk/mraid/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_a
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_21
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_24} :catch_3a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_24} :catch_4d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_52

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_30

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_39} :catch_3a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_30 .. :try_end_39} :catch_4d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_52

    goto :goto_21

    :catch_3a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mraid loadUrl failed (IllegalArgumentException): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_2f

    :catch_4d
    move-exception v0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_2f

    :catch_52
    move-exception v0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_2f
.end method

.method public setOnCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$8(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V

    return-void
.end method

.method public setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    return-void
.end method

.method public setOnExpandListener(Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V

    return-void
.end method

.method public setOnFailureListener(Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$7(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V

    return-void
.end method

.method public setOnOpenListener(Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$10(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V

    return-void
.end method

.method public setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    return-void
.end method
