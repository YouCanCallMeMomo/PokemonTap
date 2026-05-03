.class Lcom/haku/taptapme/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haku/taptapme/MainActivity$2;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/MainActivity$2;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/haku/taptapme/MainActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/haku/taptapme/MainActivity$2$1;->this$1:Lcom/haku/taptapme/MainActivity$2;

    iput-object p2, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$email:Ljava/lang/String;

    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/haku/taptapme/utils/ApiHandler;->login(Ljava/lang/String;Ljava/lang/String;)Lcom/haku/taptapme/models/User;

    move-result-object v0

    .line 112
    .local v0, "user":Lcom/haku/taptapme/models/User;
    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$2$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/haku/taptapme/MainActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/haku/taptapme/MainActivity$2$1$1;-><init>(Lcom/haku/taptapme/MainActivity$2$1;Lcom/haku/taptapme/models/User;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
