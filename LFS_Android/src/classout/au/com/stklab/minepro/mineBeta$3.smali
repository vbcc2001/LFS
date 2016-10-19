.class Lau/com/stklab/minepro/mineBeta$3;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$3;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Connection error, maybe there are some problems in the network"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_7

    :cond_23
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\uc5f0\uacb0\uc5d0 \uc624\ub958\uac00 \uc0dd\uacbc\uc2b5\ub2c8\ub2e4,\ub124\ud2b8\uc6cc\ud06c\ub97c \ud655\uc778\ud558\uc138\uc694"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_3b
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Verbindungsfehler, vielleicht gibt es einige Probleme im Netzwerk"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_53
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u9023\u63a5\u932f\u8aa4\uff0c\u4e5f\u8a31\u662f\u7db2\u7d61\u4e2d\u7684\u4e00\u4e9b\u554f\u984c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_6b
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u9519\u8bef\uff0c\u4e5f\u8bb8\u662f\u7f51\u7edc\u4e2d\u7684\u4e00\u4e9b\u95ee\u9898"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_83
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u63a5\u7d9a\u30a8\u30e9\u30fc\u304c\u3001\u591a\u5206\u3001\u30cd\u30c3\u30c8\u30ef\u30fc\u30af\u5185\u306e\u3044\u304f\u3064\u304b\u306e\u554f\u984c\u304c\u3042\u308a\u307e\u3059"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_9b
    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Connection error, some problems with the network"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1f
.end method
