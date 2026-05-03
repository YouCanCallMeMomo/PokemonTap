.class Lcom/haku/taptapme/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haku/taptapme/MainActivity;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haku/taptapme/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    const-string v1, "Try to login as guests..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 57
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/haku/taptapme/MainActivity$1$1;

    invoke-direct {v2, p0, v1}, Lcom/haku/taptapme/MainActivity$1$1;-><init>(Lcom/haku/taptapme/MainActivity$1;Landroid/os/Handler;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
