.class public abstract Lcom/adsdk/sdk/mraid/BaseActivity;
.super Landroid/app/Activity;


# static fields
.field private static final CLOSE_BUTTON_PADDING_DP:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE_DP:F = 50.0f


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method protected hideInterstitialCloseButton()V
    .registers 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/BaseActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->showInterstitialCloseButton()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected showInterstitialCloseButton()V
    .registers 7

    const/4 v5, 0x1

    const/high16 v4, 0x3f000000

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    if-nez v0, :cond_49

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v3

    const/16 v2, -0x1d

    invoke-static {p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    const/16 v2, -0x1e

    invoke-static {p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsdk/sdk/mraid/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/BaseActivity$1;-><init>(Lcom/adsdk/sdk/mraid/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    const/high16 v2, 0x41000000

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
