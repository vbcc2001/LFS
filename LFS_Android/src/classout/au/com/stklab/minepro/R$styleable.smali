.class public final Lau/com/stklab/minepro/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final au_com_phil_minepro:[I

.field public static final au_com_phil_minepro_backgroundColor:I = 0x0

.field public static final au_com_phil_minepro_textBackgroundColor:I = 0x2

.field public static final au_com_phil_minepro_textBorderColor:I = 0x3

.field public static final au_com_phil_minepro_textFontColor:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lau/com/stklab/minepro/R$styleable;->au_com_phil_minepro:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
