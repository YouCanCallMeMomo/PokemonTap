.class public Lcom/haku/taptapme/ShopActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShopActivity.java"


# instance fields
.field private btnBuyReducer:Landroid/widget/Button;

.field private db:Lcom/haku/taptapme/utils/DatabaseHelper;

.field private tvCurrentPoints:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private syncUI()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getAccountMetric()I

    move-result v0

    .line 45
    .local v0, "m":I
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->tvCurrentPoints:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metric Alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v1}, Lcom/haku/taptapme/utils/DatabaseHelper;->isModifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->btnBuyReducer:Landroid/widget/Button;

    const-string v2, "ACTIVE"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->btnBuyReducer:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 50
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->btnBuyReducer:Landroid/widget/Button;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-haku-taptapme-ShopActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 30
    const/16 v0, 0xc8

    .line 31
    .local v0, "cost":I
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v1}, Lcom/haku/taptapme/utils/DatabaseHelper;->isModifierEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "Module already synchronized."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->applyMetricReduction(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/haku/taptapme/utils/DatabaseHelper;->setModifierStatus(Z)V

    .line 35
    const-string v1, "Synchronization successful."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 36
    invoke-direct {p0}, Lcom/haku/taptapme/ShopActivity;->syncUI()V

    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "Internal metric insufficient."

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 40
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/haku/taptapme/R$layout;->activity_shop:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ShopActivity;->setContentView(I)V

    .line 23
    sget v0, Lcom/haku/taptapme/R$id;->tvCurrentPoints:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/ShopActivity;->tvCurrentPoints:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/haku/taptapme/R$id;->btnBuyReducer:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/haku/taptapme/ShopActivity;->btnBuyReducer:Landroid/widget/Button;

    .line 25
    new-instance v0, Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/haku/taptapme/utils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haku/taptapme/ShopActivity;->db:Lcom/haku/taptapme/utils/DatabaseHelper;

    .line 27
    invoke-direct {p0}, Lcom/haku/taptapme/ShopActivity;->syncUI()V

    .line 29
    iget-object v0, p0, Lcom/haku/taptapme/ShopActivity;->btnBuyReducer:Landroid/widget/Button;

    new-instance v1, Lcom/haku/taptapme/ShopActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/ShopActivity$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
