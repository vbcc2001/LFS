.class Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;
.super Ljava/lang/Object;


# instance fields
.field private mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

.field private mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

.field private mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

.field private mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

.field private mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

.field private mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    return-void
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-object v0
.end method
