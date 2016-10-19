.class public Lcom/adsdk/sdk/video/AspectRatioImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private mFill:Z

.field private mMaxH:I

.field private mMinW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    iput v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    return-void
.end method

.method public static dip2pixel(ILandroid/content/Context;)F
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method


# virtual methods
.method ensureConstraintMetAndSet(IIII)V
    .registers 7

    if-ge p3, p4, :cond_39

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_1d

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1d

    float-to-int p1, v0

    div-int v0, p4, p3

    mul-int p2, v0, p1

    :cond_1d
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_35

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_35

    float-to-int p2, v0

    mul-int v0, p2, p3

    div-int p1, v0, p4

    :cond_35
    :goto_35
    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->setMeasuredDimension(II)V

    return-void

    :cond_39
    const/4 v0, 0x0

    goto :goto_3

    :cond_3b
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_53

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_53

    float-to-int p2, v0

    mul-int v0, p2, p3

    div-int p1, v0, p4

    :cond_53
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_35

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_35

    float-to-int p1, v0

    div-int v0, p4, p3

    mul-int p2, v0, p1

    goto :goto_35
.end method

.method public fillParent(ZII)V
    .registers 4

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    iput p3, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    iput p2, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    return-void
.end method

.method getConstrainedHeight(IIII)I
    .registers 7

    if-ge p3, p4, :cond_32

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_34

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_1d

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1d

    float-to-int v0, v0

    div-int v1, p4, p3

    mul-int p2, v1, v0

    :cond_1d
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_31

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_31

    float-to-int p2, v0

    :cond_31
    :goto_31
    return p2

    :cond_32
    const/4 v0, 0x0

    goto :goto_3

    :cond_34
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    if-lez v0, :cond_4c

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMaxH:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4c

    float-to-int p2, v0

    mul-int v0, p2, p3

    div-int p1, v0, p4

    :cond_4c
    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    if-lez v0, :cond_31

    iget v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mMinW:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageView;->dip2pixel(ILandroid/content/Context;)F

    move-result v0

    int-to-float v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_31

    float-to-int v0, v0

    div-int v1, p4, p3

    mul-int p2, v1, v0

    goto :goto_31
.end method

.method protected getMeasuredHeight(II)I
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-le v3, v2, :cond_30

    mul-int v1, v0, v2

    div-int/2addr v1, v3

    :goto_2b
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getConstrainedHeight(IIII)I

    move-result v0

    goto :goto_15

    :cond_30
    mul-int v1, v0, v3

    div-int/2addr v1, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2b
.end method

.method protected onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AspectRatioImageView;->mFill:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AspectRatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-le v3, v2, :cond_2e

    mul-int v0, v1, v2

    div-int/2addr v0, v3

    :goto_2a
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/adsdk/sdk/video/AspectRatioImageView;->ensureConstraintMetAndSet(IIII)V

    goto :goto_14

    :cond_2e
    mul-int v0, v1, v3

    div-int/2addr v0, v2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2a
.end method
