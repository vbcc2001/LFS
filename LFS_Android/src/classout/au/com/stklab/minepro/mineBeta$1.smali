.class Lau/com/stklab/minepro/mineBeta$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lau/com/stklab/minepro/mineBeta;


# direct methods
.method constructor <init>(Lau/com/stklab/minepro/mineBeta;)V
    .registers 2

    iput-object p1, p0, Lau/com/stklab/minepro/mineBeta$1;->this$0:Lau/com/stklab/minepro/mineBeta;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    # getter for: Lau/com/stklab/minepro/mineBeta;->thisAct:Landroid/app/Activity;
    invoke-static {}, Lau/com/stklab/minepro/mineBeta;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "New version detected, update?"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Yes"

    const-string v0, "No"

    :goto_23
    new-instance v3, Lau/com/stklab/minepro/mineBeta$1$1;

    invoke-direct {v3, p0}, Lau/com/stklab/minepro/mineBeta$1$1;-><init>(Lau/com/stklab/minepro/mineBeta$1;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lau/com/stklab/minepro/mineBeta$1$2;

    invoke-direct {v1, p0}, Lau/com/stklab/minepro/mineBeta$1$2;-><init>(Lau/com/stklab/minepro/mineBeta$1;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_ad

    :goto_3a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_6

    :cond_3e
    :try_start_3e
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "\uc0c8 \ubc84\uc804\uc774 \ubc1c\uacac\ub418\uc5c8\uc2b5\ub2c8\ub2e4, \uc5c5\ub370\uc774\ud2b8\ub97c \ud558\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\uc608"

    const-string v0, "\uc544\ub2c8\uc694"

    goto :goto_23

    :cond_52
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "Neue Version erkannt wird, das Update?"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "ja"

    const-string v0, "kein"

    goto :goto_23

    :cond_66
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "\u6aa2\u6e2c\u5230\u65b0\u7248\u672c\uff0c\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u662f"

    const-string v0, "\u5426"

    goto :goto_23

    :cond_7a
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff0c\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u662f"

    const-string v0, "\u5426"

    goto :goto_23

    :cond_8e
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "\u65b0\u3057\u3044\u30d0\u30fc\u30b8\u30e7\u30f3\u304c\u691c\u51fa\u3055\u308c\u3001\u66f4\u65b0\u3057\u307e\u3059\u304b\uff1f"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u306f\u3044"

    const-string v0, "\u306a\u3057"

    goto :goto_23

    :cond_a2
    const-string v0, "New version detected, update?"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Yes"

    const-string v0, "No"
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ab} :catch_ad

    goto/16 :goto_23

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method
