.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/volley/Request;

.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    # getter for: Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    # getter for: Lcom/android/volley/Request;->mEventLog:Lcom/android/volley/VolleyLog$MarkerLog;
    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    return-void
.end method
