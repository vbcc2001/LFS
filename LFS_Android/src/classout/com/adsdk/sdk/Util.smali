.class public Lcom/adsdk/sdk/Util;
.super Ljava/lang/Object;


# static fields
.field private static sFadeInAnimationId:I

.field private static sFadeOutAnimationId:I

.field private static sSlideInBottomAnimationId:I

.field private static sSlideInLeftAnimationId:I

.field private static sSlideInRightAnimationId:I

.field private static sSlideInTopAnimationId:I

.field private static sSlideOutBottomAnimationId:I

.field private static sSlideOutLeftAnimationId:I

.field private static sSlideOutRightAnimationId:I

.field private static sSlideOutTopAnimationId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUserAgent()Ljava/lang/String;
    .registers 7

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v0, "en"

    if-eqz v5, :cond_37

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_37
    const-string v4, "Mozilla/5.0 (Linux; U; Android %1$s; %2$s; %3$s Build/%4$s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "UNKNOWN"

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    const-string v0, "WIFI"

    goto :goto_18

    :cond_27
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2d

    const-string v0, "WIMAX"

    goto :goto_18

    :cond_2d
    if-nez v1, :cond_62

    packed-switch v0, :pswitch_data_68

    const-string v0, "MOBILE"

    goto :goto_18

    :pswitch_35
    const-string v0, "1xRTT"

    goto :goto_18

    :pswitch_38
    const-string v0, "CDMA"

    goto :goto_18

    :pswitch_3b
    const-string v0, "EDGE"

    goto :goto_18

    :pswitch_3e
    const-string v0, "EVDO_0"

    goto :goto_18

    :pswitch_41
    const-string v0, "EVDO_A"

    goto :goto_18

    :pswitch_44
    const-string v0, "GPRS"

    goto :goto_18

    :pswitch_47
    const-string v0, "UMTS"

    goto :goto_18

    :pswitch_4a
    const-string v0, "EHRPD"

    goto :goto_18

    :pswitch_4d
    const-string v0, "EVDO_B"

    goto :goto_18

    :pswitch_50
    const-string v0, "HSDPA"

    goto :goto_18

    :pswitch_53
    const-string v0, "HSPA"

    goto :goto_18

    :pswitch_56
    const-string v0, "HSPAP"

    goto :goto_18

    :pswitch_59
    const-string v0, "HSUPA"

    goto :goto_18

    :pswitch_5c
    const-string v0, "IDEN"

    goto :goto_18

    :pswitch_5f
    const-string v0, "LTE"

    goto :goto_18

    :cond_62
    const-string v0, "UNKNOWN"

    goto :goto_18

    :cond_65
    const-string v0, "UNKNOWN"

    goto :goto_18

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3b
        :pswitch_47
        :pswitch_38
        :pswitch_3e
        :pswitch_41
        :pswitch_35
        :pswitch_50
        :pswitch_59
        :pswitch_53
        :pswitch_5c
        :pswitch_4d
        :pswitch_5f
        :pswitch_4a
        :pswitch_56
    .end packed-switch
.end method

.method public static getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_36

    const/4 v0, 0x2

    :try_start_18
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_30

    move-result-object v0

    const/4 v2, 0x0

    :try_start_2c
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :goto_2f
    return-object v0

    :catchall_30
    move-exception v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_1c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "device_id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6d

    :try_start_29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    const-string v0, "%032X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5f} :catch_80

    move-result-object v0

    :goto_60
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Android ID using pseudo unique id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :cond_7f
    return-object v0

    :catch_80
    move-exception v0

    const-string v2, "Could not generate pseudo unique id"

    invoke-static {v2, v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "9774d56d682e549c"

    goto :goto_60
.end method

.method public static getEnterAnimation(I)I
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    sget v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    goto :goto_4

    :pswitch_8
    sget v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    goto :goto_4

    :pswitch_b
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    goto :goto_4

    :pswitch_e
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    goto :goto_4

    :pswitch_11
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    goto :goto_4

    :pswitch_14
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    goto :goto_4

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_14
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method

.method public static getEnterAnimationSet(I)Landroid/view/animation/AnimationSet;
    .registers 11

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    packed-switch p0, :pswitch_data_80

    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :pswitch_1b
    move-object v0, v9

    goto :goto_1a

    :pswitch_1d
    move-object v0, v9

    goto :goto_1a

    :pswitch_1f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_4f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_67
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_67
        :pswitch_1f
        :pswitch_37
        :pswitch_4f
        :pswitch_1d
    .end packed-switch
.end method

.method public static getExitAnimation(I)I
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    sget v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    goto :goto_4

    :pswitch_8
    sget v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    goto :goto_4

    :pswitch_b
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    goto :goto_4

    :pswitch_e
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    goto :goto_4

    :pswitch_11
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    goto :goto_4

    :pswitch_14
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    goto :goto_4

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_14
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method

.method public static getExitAnimationSet(I)Landroid/view/animation/AnimationSet;
    .registers 11

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    packed-switch p0, :pswitch_data_80

    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :pswitch_1b
    move-object v0, v9

    goto :goto_1a

    :pswitch_1d
    move-object v0, v9

    goto :goto_1a

    :pswitch_1f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_4f
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    :pswitch_67
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v9

    goto :goto_1a

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_67
        :pswitch_1f
        :pswitch_37
        :pswitch_4f
        :pswitch_1d
    .end packed-switch
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_b

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_10

    if-nez v2, :cond_3c

    :cond_10
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_3c

    if-nez v1, :cond_2b

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    if-nez v2, :cond_3c

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_2a

    :cond_3c
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static getMemoryClass(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getMemoryClass"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v0

    :goto_20
    return v0

    :catch_21
    move-exception v0

    const/16 v0, 0x10

    goto :goto_20
.end method

.method public static getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public static initializeAnimations(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "fade_in"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    const-string v1, "fade_out"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    const-string v1, "slide_bottom_in"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    const-string v1, "slide_bottom_out"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    const-string v1, "slide_top_in"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    const-string v1, "slide_top_out"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    const-string v1, "slide_left_in"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    const-string v1, "slide_left_out"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    const-string v1, "slide_right_in"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    const-string v1, "slide_right_out"

    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_22

    if-nez v3, :cond_27

    :cond_22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_19

    :cond_27
    move v0, v1

    goto :goto_19

    :cond_29
    move v0, v2

    goto :goto_19
.end method
