.class public Lcom/haku/taptapme/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/haku/taptapme/utils/SecurityUtils;->checkSystemState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "System error: 0x01"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    invoke-virtual {p0}, Lcom/haku/taptapme/MainActivity;->finish()V

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/haku/taptapme/utils/SecurityUtils;->verifyRuntimeEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "System error: 0x02"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    invoke-virtual {p0}, Lcom/haku/taptapme/MainActivity;->finish()V

    .line 35
    return-void

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/haku/taptapme/utils/SecurityUtils;->performDataValidation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    const-string v0, "System error: 0x03"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-virtual {p0}, Lcom/haku/taptapme/MainActivity;->finish()V

    .line 41
    return-void

    .line 44
    :cond_2
    sget v0, Lcom/haku/taptapme/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/MainActivity;->setContentView(I)V

    .line 46
    sget v0, Lcom/haku/taptapme/R$id;->etEmail:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 47
    .local v0, "etEmail":Landroid/widget/EditText;
    sget v1, Lcom/haku/taptapme/R$id;->etPassword:I

    invoke-virtual {p0, v1}, Lcom/haku/taptapme/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 48
    .local v1, "etPassword":Landroid/widget/EditText;
    sget v2, Lcom/haku/taptapme/R$id;->btnLogin:I

    invoke-virtual {p0, v2}, Lcom/haku/taptapme/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    .local v2, "btnLogin":Landroid/widget/Button;
    sget v3, Lcom/haku/taptapme/R$id;->btnGuest:I

    invoke-virtual {p0, v3}, Lcom/haku/taptapme/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 51
    .local v3, "btnGuests":Landroid/widget/Button;
    new-instance v4, Lcom/haku/taptapme/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/haku/taptapme/MainActivity$1;-><init>(Lcom/haku/taptapme/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v4, Lcom/haku/taptapme/MainActivity$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/haku/taptapme/MainActivity$2;-><init>(Lcom/haku/taptapme/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method
