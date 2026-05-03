.class Lcom/haku/taptapme/ActivityPlay$1;
.super Ljava/util/TimerTask;
.source "ActivityPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/ActivityPlay;->bootEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haku/taptapme/ActivityPlay;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/ActivityPlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haku/taptapme/ActivityPlay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-haku-taptapme-ActivityPlay$1()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-static {v0}, Lcom/haku/taptapme/ActivityPlay;->access$000(Lcom/haku/taptapme/ActivityPlay;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-static {v0}, Lcom/haku/taptapme/ActivityPlay;->access$000(Lcom/haku/taptapme/ActivityPlay;)I

    move-result v0

    iget-object v1, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-static {v1}, Lcom/haku/taptapme/ActivityPlay;->access$100(Lcom/haku/taptapme/ActivityPlay;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-static {v0}, Lcom/haku/taptapme/ActivityPlay;->access$010(Lcom/haku/taptapme/ActivityPlay;)I

    .line 102
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    invoke-static {v0}, Lcom/haku/taptapme/ActivityPlay;->access$200(Lcom/haku/taptapme/ActivityPlay;)V

    .line 104
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay$1;->this$0:Lcom/haku/taptapme/ActivityPlay;

    new-instance v1, Lcom/haku/taptapme/ActivityPlay$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/ActivityPlay$1$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/ActivityPlay$1;)V

    invoke-virtual {v0, v1}, Lcom/haku/taptapme/ActivityPlay;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
