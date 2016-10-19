.class public Lau/com/stklab/minepro/service/NotifyingController;
.super Landroid/app/Activity;


# instance fields
.field button_exit:Landroid/widget/Button;

.field button_play:Landroid/widget/Button;

.field button_start:Landroid/widget/Button;

.field button_stop:Landroid/widget/Button;

.field private exitListener:Landroid/view/View$OnClickListener;

.field private mStartListener:Landroid/view/View$OnClickListener;

.field private mStopListener:Landroid/view/View$OnClickListener;

.field private playListener:Landroid/view/View$OnClickListener;

.field text:Landroid/widget/TextView;

.field text_downloading:Ljava/lang/String;

.field text_finished:Ljava/lang/String;

.field text_not_running:Ljava/lang/String;

.field text_stopped:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingController$1;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingController$1;-><init>(Lau/com/stklab/minepro/service/NotifyingController;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->mStartListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingController$2;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingController$2;-><init>(Lau/com/stklab/minepro/service/NotifyingController;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->mStopListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingController$3;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingController$3;-><init>(Lau/com/stklab/minepro/service/NotifyingController;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->exitListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lau/com/stklab/minepro/service/NotifyingController$4;

    invoke-direct {v0, p0}, Lau/com/stklab/minepro/service/NotifyingController$4;-><init>(Lau/com/stklab/minepro/service/NotifyingController;)V

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->playListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->setContentView(I)V

    const-string v0, "Video++ download manager"

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController;->exitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController;->playListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lau/com/stklab/minepro/service/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "\uc2dc\uc791"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "\uc911\uc9c0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "\uc885\ub8cc"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "\ubc29\uc1a1"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\uc2dc\uc791\ub418\uc9c0 \ub0b4\ub824\ubc1b\uae30"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "\ub2e4\uc6b4\ub85c\ub4dc \uc644\ub8cc!\n \ud30c\uc77c\uc5d0 \uc788\uc2b5\ub2c8\ub2e4 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "\uc911\uc9c0\ub428"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "\ub2e4\uc6b4\ub85c\ub4dc\n \ud30c\uc77c\uc5d0 \uc788\uc2b5\ub2c8\ub2e4 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    :goto_a2
    sget-wide v0, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e0

    sget-wide v0, Lau/com/stklab/minepro/service/NotifyingService;->downloadedSize:J

    sget-wide v2, Lau/com/stklab/minepro/service/NotifyingService;->totalSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e0

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d2
    return-void

    :cond_d3
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Germany"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "starten"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "stoppen"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "verlassen"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "Sendung"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Downloading nicht gestartet"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "Laden abgeschlossen!\n Die Datei ist bei sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "gestoppt"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "Downloading\n Die Datei ist bei sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    goto :goto_a2

    :cond_10a
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseTradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "\u958b\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u4e0b\u8f09\u5c1a\u672a\u555f\u52d5"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f09\u5b8c\u6210!\n \u8a72\u6587\u4ef6\u662f\u5728 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "\u505c\u6b62"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f09\u4e2d\n \u8a72\u6587\u4ef6\u662f\u5728 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    goto/16 :goto_a2

    :cond_142
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "ChineseSimplied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u4e0b\u8f7d\u5c1a\u672a\u542f\u52a8"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210!\n \u8be5\u6587\u4ef6\u662f\u5728 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "\u505c\u6b62"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u4e2d\n \u8be5\u6587\u4ef6\u662f\u5728 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    goto/16 :goto_a2

    :cond_17a
    sget-object v0, Lau/com/stklab/minepro/Global;->language:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "\u958b\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "\u7d42\u4e86\u3059\u308b"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "\u653e\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\u3092\u958b\u59cb\u3057\u3066\u3044\u306a\u3044"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "\u5b8c\u4e86\u3057\u305f\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9!\n \u30d5\u30a1\u30a4\u30eb\u306f\u6b21\u306e\u5834\u6240\u306b\u3042\u308a\u307e\u3059 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "\u505c\u6b62"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "\u30c0\u30a6\u30f3\u30ed\u30fc\u30c9\n \u30d5\u30a1\u30a4\u30eb\u306f\u6b21\u306e\u5834\u6240\u306b\u3042\u308a\u307e\u3059 sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    goto/16 :goto_a2

    :cond_1b2
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_exit:Landroid/widget/Button;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Downloading not started"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    const-string v0, "Download completed!\n The file is at sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_stopped:Ljava/lang/String;

    const-string v0, "Stopped"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_finished:Ljava/lang/String;

    const-string v0, "Downloading\n The file is at sdcard/STK/"

    iput-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    goto/16 :goto_a2

    :cond_1e0
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_play:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    sget-boolean v0, Lau/com/stklab/minepro/service/NotifyingService;->isRunning:Z

    if-eqz v0, :cond_210

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_downloading:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lau/com/stklab/minepro/Preview;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_start:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d2

    :cond_210
    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lau/com/stklab/minepro/service/NotifyingController;->text_not_running:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lau/com/stklab/minepro/service/NotifyingController;->button_stop:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d2
.end method
