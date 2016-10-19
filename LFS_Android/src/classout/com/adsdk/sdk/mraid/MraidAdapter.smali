.class public Lcom/adsdk/sdk/mraid/MraidAdapter;
.super Lcom/adsdk/sdk/mraid/BaseAdapter;


# instance fields
.field private mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mPreviousAutorefreshSetting:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidAdapter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return v0
.end method

.method private initMraidListeners()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$1;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$2;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnExpandListener(Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$3;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidAdapter$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidAdapter$4;-><init>(Lcom/adsdk/sdk/mraid/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setOnFailureListener(Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/adsdk/sdk/mraid/BaseAdapter;->init(Lcom/adsdk/sdk/mraid/MoPubView;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    :cond_c
    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseAdapter;->invalidate()V

    return-void
.end method

.method public loadAd()V
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mJsonParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidAdapter;->initMraidListeners()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MoPubView;->removeAllViews()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMoPubView:Lcom/adsdk/sdk/mraid/MoPubView;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidAdapter;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1, v2, v0}, Lcom/adsdk/sdk/mraid/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method
