.class public Lcom/adsdk/sdk/BannerAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/Ad;


# static fields
.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final WEB:Ljava/lang/String; = "web"

.field private static final serialVersionUID:J = 0x2d684300784e9155L


# instance fields
.field private bannerHeight:I

.field private bannerWidth:I

.field private clickType:Lcom/adsdk/sdk/data/ClickType;

.field private clickUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private refresh:I

.field private scale:Z

.field private skipOverlay:I

.field private skipPreflight:Z

.field private text:Ljava/lang/String;

.field private type:I

.field private urlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    return-void
.end method


# virtual methods
.method public getBannerHeight()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    return v0
.end method

.method public getBannerWidth()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    return v0
.end method

.method public getClickType()Lcom/adsdk/sdk/data/ClickType;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    return v0
.end method

.method public getSkipOverlay()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    return v0
.end method

.method public getUrlType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public isScale()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    return v0
.end method

.method public isSkipPreflight()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    return v0
.end method

.method public setBannerHeight(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    return-void
.end method

.method public setBannerWidth(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    return-void
.end method

.method public setClickType(Lcom/adsdk/sdk/data/ClickType;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    return-void
.end method

.method public setScale(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    return-void
.end method

.method public setSkipOverlay(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->skipOverlay:I

    return-void
.end method

.method public setSkipPreflight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    return-void
.end method

.method public setUrlType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response [refresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->refresh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->bannerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/BannerAd;->bannerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->clickType:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/BannerAd;->urlType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/BannerAd;->scale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPreflight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/BannerAd;->skipPreflight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
