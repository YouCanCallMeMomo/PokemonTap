.class Lcom/haku/taptapme/MainActivity$2;
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

.field final synthetic val$etEmail:Landroid/widget/EditText;

.field final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haku/taptapme/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 85
    iput-object p1, p0, Lcom/haku/taptapme/MainActivity$2;->this$0:Lcom/haku/taptapme/MainActivity;

    iput-object p2, p0, Lcom/haku/taptapme/MainActivity$2;->val$etEmail:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/haku/taptapme/MainActivity$2;->val$etPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/haku/taptapme/MainActivity$2;->val$etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/haku/taptapme/MainActivity$2;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/haku/taptapme/MainActivity$2;->val$etEmail:Landroid/widget/EditText;

    const-string v3, "Email is required"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/haku/taptapme/MainActivity$2;->val$etPassword:Landroid/widget/EditText;

    const-string v3, "Password is required"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/haku/taptapme/MainActivity$2;->this$0:Lcom/haku/taptapme/MainActivity;

    const-string v3, "Connecting to Trainer Portal..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 104
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/haku/taptapme/MainActivity$2$1;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/haku/taptapme/MainActivity$2$1;-><init>(Lcom/haku/taptapme/MainActivity$2;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
