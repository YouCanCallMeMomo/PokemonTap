.class Lcom/haku/taptapme/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haku/taptapme/MainActivity$1;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/MainActivity$1;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/haku/taptapme/MainActivity$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/haku/taptapme/MainActivity$1$1;->this$1:Lcom/haku/taptapme/MainActivity$1;

    iput-object p2, p0, Lcom/haku/taptapme/MainActivity$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    const-string v0, "guest@taptapme.com"

    const-string v1, "guests_password"

    invoke-static {v0, v1}, Lcom/haku/taptapme/utils/ApiHandler;->login(Ljava/lang/String;Ljava/lang/String;)Lcom/haku/taptapme/models/User;

    move-result-object v0

    .line 63
    .local v0, "user":Lcom/haku/taptapme/models/User;
    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$1$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/haku/taptapme/MainActivity$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/haku/taptapme/MainActivity$1$1$1;-><init>(Lcom/haku/taptapme/MainActivity$1$1;Lcom/haku/taptapme/models/User;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
