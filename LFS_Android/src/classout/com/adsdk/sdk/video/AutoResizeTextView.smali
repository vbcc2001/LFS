.class public Lcom/adsdk/sdk/video/AutoResizeTextView;
.super Landroid/widget/TextView;


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."

.field private static final sTextResizeCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iput v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .registers 13

    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sget-object v1, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddEllipsis()Z
    .registers 2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .registers 2

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v0, :cond_21

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    :cond_21
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    if-ne p1, p3, :cond_4

    if-eq p2, p4, :cond_7

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    :cond_7
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resetTextSize()V

    return-void
.end method

.method public resetTextSize()V
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    return-void
.end method

.method public resizeText()V
    .registers 4

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->resizeText(II)V

    return-void
.end method

.method public resizeText(II)V
    .registers 14

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_18

    if-lez p2, :cond_18

    if-lez p1, :cond_18

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v9

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_83

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2f
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    move v8, v0

    move v0, v3

    :goto_35
    if-le v0, p2, :cond_3d

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_86

    :cond_3d
    iget-boolean v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    if-eqz v3, :cond_6d

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v3, v8, v3

    if-nez v3, :cond_6d

    if-le v0, p2, :cond_6d

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sget-object v3, Lcom/adsdk/sdk/video/AutoResizeTextView;->sTextResizeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_6d

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-gez v4, :cond_96

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    :goto_6d
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    iget v1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    invoke-interface {v0, p0, v9, v8}, Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    :cond_80
    iput-boolean v7, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mNeedsResize:Z

    goto :goto_18

    :cond_83
    iget v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    goto :goto_2f

    :cond_86
    const/high16 v0, 0x40000000

    sub-float v0, v8, v0

    iget v3, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v0

    move v8, v3

    goto :goto_35

    :cond_96
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    const-string v4, "..."

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    move v10, v3

    move v3, v0

    move v0, v10

    :goto_ab
    int-to-float v6, p1

    add-float/2addr v3, v4

    cmpg-float v3, v6, v3

    if-ltz v3, :cond_cc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6d

    :cond_cc
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_ab
.end method

.method public setAddEllipsis(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mAddEllipsis:Z

    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iput p2, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingMult:F

    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mSpacingAdd:F

    return-void
.end method

.method public setMaxTextSize(F)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMaxTextSize:F

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setMinTextSize(F)V
    .registers 2

    iput p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mMinTextSize:F

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setOnResizeListener(Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextResizeListener:Lcom/adsdk/sdk/video/AutoResizeTextView$OnTextResizeListener;

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/AutoResizeTextView;->mTextSize:F

    return-void
.end method
