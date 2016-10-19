.class public Lcom/adsdk/sdk/video/NavIcon;
.super Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Lcom/adsdk/sdk/video/NavIconData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/high16 v1, 0x40800000

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/NavIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/adsdk/sdk/video/NavIcon;->setPadding(IIII)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/NavIcon;->setVisibility(I)V

    iget-object v0, p2, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/NavIcon;->setImageDrawable(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/adsdk/sdk/video/NavIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/NavIcon;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/NavIcon;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_4e
    .catchall {:try_start_1 .. :try_end_c} :catchall_79

    :try_start_c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-object v3, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    int-to-float v7, v4

    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    int-to-float v8, v5

    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-ne v6, v4, :cond_36

    if-eq v3, v5, :cond_a9

    :cond_36
    const/4 v4, 0x0

    invoke-static {v1, v6, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    :goto_3c
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_a7
    .catchall {:try_start_c .. :try_end_47} :catchall_a3

    if-eqz v0, :cond_4c

    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_9d

    :cond_4c
    :goto_4c
    move-object v0, v1

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    move-object v0, v2

    :goto_50
    :try_start_50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NavIcon cannot load resource "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_50 .. :try_end_62} :catchall_a3

    if-eqz v0, :cond_67

    :try_start_64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_9f

    :cond_67
    :goto_67
    :try_start_67
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_88

    move-result-object v0

    goto :goto_4d

    :catchall_79
    move-exception v0

    :goto_7a
    if-eqz v2, :cond_7f

    :try_start_7c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_a1

    :cond_7f
    :goto_7f
    throw v0

    :cond_80
    if-eqz v0, :cond_67

    :try_start_82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_67

    :catch_86
    move-exception v0

    goto :goto_67

    :catch_88
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fetch image:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_4d

    :catch_9d
    move-exception v0

    goto :goto_4c

    :catch_9f
    move-exception v0

    goto :goto_67

    :catch_a1
    move-exception v1

    goto :goto_7f

    :catchall_a3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7a

    :catch_a7
    move-exception v1

    goto :goto_50

    :cond_a9
    move-object v3, v1

    goto :goto_3c
.end method

.method private setImageDrawable(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/video/NavIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/video/NavIcon$1;-><init>(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget v1, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    const-string v2, "market:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "http://market.android.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "voicemail:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_23

    :catch_77
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t open URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_23

    :cond_8f
    :try_start_8f
    const-string v2, "mfox:external:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    :cond_ad
    const-string v2, "mfox:replayvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b2} :catch_77

    move-result v2

    if-eqz v2, :cond_da

    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "replayVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b5 .. :try_end_c8} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c8} :catch_d2

    goto/16 :goto_23

    :catch_ca
    move-exception v0

    :try_start_cb
    const-string v0, "Your activity class has no replayVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_d2
    move-exception v0

    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_da
    const-string v2, "mfox:playvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_df} :catch_77

    move-result v2

    if-eqz v2, :cond_107

    :try_start_e2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "playVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e2 .. :try_end_f5} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f5} :catch_ff

    goto/16 :goto_23

    :catch_f7
    move-exception v0

    :try_start_f8
    const-string v0, "Your activity class has no playVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_ff
    move-exception v0

    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_107
    const-string v2, "mfox:skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto/16 :goto_23

    :cond_114
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->navigate(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_11b} :catch_77

    goto/16 :goto_23
.end method
