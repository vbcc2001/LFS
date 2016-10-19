.class Lau/com/stklab/minepro/mineBeta$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lau/com/stklab/minepro/mineBeta$2;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta$2;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$2$1;->this$1:Lau/com/stklab/minepro/mineBeta$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Click"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
