.class Lcom/adsdk/sdk/banner/BannerAdView$3;
.super Landroid/widget/ViewFlipper;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$3;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$3;->stopFlipping()V

    goto :goto_3
.end method
