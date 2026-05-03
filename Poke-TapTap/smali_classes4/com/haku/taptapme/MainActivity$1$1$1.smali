.class Lcom/haku/taptapme/MainActivity$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/MainActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/haku/taptapme/MainActivity$1$1;

.field final synthetic val$user:Lcom/haku/taptapme/models/User;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/MainActivity$1$1;Lcom/haku/taptapme/models/User;)V
    .locals 0
    .param p1, "this$2"    # Lcom/haku/taptapme/MainActivity$1$1;
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

    .line 63
    iput-object p1, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->this$2:Lcom/haku/taptapme/MainActivity$1$1;

    iput-object p2, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->val$user:Lcom/haku/taptapme/models/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->val$user:Lcom/haku/taptapme/models/User;

    const-string v1, "MyLog"

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->this$2:Lcom/haku/taptapme/MainActivity$1$1;

    iget-object v0, v0, Lcom/haku/taptapme/MainActivity$1$1;->this$1:Lcom/haku/taptapme/MainActivity$1;

    iget-object v0, v0, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    const-string v2, "Failed to Login"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    const-string v0, "Failed Login Null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->val$user:Lcom/haku/taptapme/models/User;

    invoke-virtual {v2}, Lcom/haku/taptapme/models/User;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->this$2:Lcom/haku/taptapme/MainActivity$1$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1$1;->this$1:Lcom/haku/taptapme/MainActivity$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    const-class v2, Lcom/haku/taptapme/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "USER_DATA"

    iget-object v2, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->val$user:Lcom/haku/taptapme/models/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->this$2:Lcom/haku/taptapme/MainActivity$1$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1$1;->this$1:Lcom/haku/taptapme/MainActivity$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    invoke-virtual {v1, v0}, Lcom/haku/taptapme/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$1$1$1;->this$2:Lcom/haku/taptapme/MainActivity$1$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1$1;->this$1:Lcom/haku/taptapme/MainActivity$1;

    iget-object v1, v1, Lcom/haku/taptapme/MainActivity$1;->this$0:Lcom/haku/taptapme/MainActivity;

    invoke-virtual {v1}, Lcom/haku/taptapme/MainActivity;->finish()V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
