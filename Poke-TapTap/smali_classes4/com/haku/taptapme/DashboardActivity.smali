.class public Lcom/haku/taptapme/DashboardActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DashboardActivity.java"


# instance fields
.field private btnInventory:Landroid/widget/Button;

.field private btnPlay:Landroid/widget/Button;

.field private btnShop:Landroid/widget/Button;

.field private currentUser:Lcom/haku/taptapme/models/User;

.field private dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

.field private ivAvatar:Landroid/widget/ImageView;

.field private tvLicense:Landroid/widget/TextView;

.field private tvPoints:Landroid/widget/TextView;

.field private tvWelcomeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-haku-taptapme-DashboardActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/ActivityPlay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "USER_DATA"

    iget-object v2, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method synthetic lambda$onCreate$1$com-haku-taptapme-DashboardActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/InventoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method synthetic lambda$onCreate$2$com-haku-taptapme-DashboardActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-static {v0}, Lcom/haku/taptapme/utils/SecurityUtils;->verifyPrivilegeLevel(Lcom/haku/taptapme/models/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "Module Restriction: LEVEL_1 access required."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/ShopActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/haku/taptapme/DashboardActivity;->stopTimerService()V

    .line 119
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/haku/taptapme/R$layout;->activity_dashboard:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->setContentView(I)V

    .line 52
    sget v0, Lcom/haku/taptapme/R$id;->tvWelcomeName:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvWelcomeName:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/haku/taptapme/R$id;->tvLicense:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvLicense:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/haku/taptapme/R$id;->tvPoints:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvPoints:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/haku/taptapme/R$id;->btnPlay:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnPlay:Landroid/widget/Button;

    .line 56
    sget v0, Lcom/haku/taptapme/R$id;->btnInventory:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnInventory:Landroid/widget/Button;

    .line 57
    sget v0, Lcom/haku/taptapme/R$id;->btnShop:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnShop:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/haku/taptapme/R$id;->ivAvatar:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->ivAvatar:Landroid/widget/ImageView;

    .line 59
    new-instance v0, Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/haku/taptapme/utils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

    .line 61
    invoke-virtual {p0}, Lcom/haku/taptapme/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/haku/taptapme/models/User;

    iput-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    .line 63
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvWelcomeName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Welcome, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-virtual {v2}, Lcom/haku/taptapme/models/User;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-virtual {v0}, Lcom/haku/taptapme/models/User;->getType_license()Lcom/haku/taptapme/enums/License;

    move-result-object v0

    sget-object v1, Lcom/haku/taptapme/enums/License;->LEVEL_0:Lcom/haku/taptapme/enums/License;

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvLicense:Landroid/widget/TextView;

    const-string v1, "License: Trial Mode (5m)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvLicense:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-virtual {p0}, Lcom/haku/taptapme/DashboardActivity;->startTimerService()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvLicense:Landroid/widget/TextView;

    const-string v1, "License: Pro Trainer (Unlimited)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvLicense:Landroid/widget/TextView;

    const-string v1, "#3B4CCA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-virtual {p0}, Lcom/haku/taptapme/DashboardActivity;->stopTimerService()V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-virtual {v0}, Lcom/haku/taptapme/models/User;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "avatarUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 80
    const v2, 0x1080093

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget v2, Lcom/haku/taptapme/R$mipmap;->ic_icon_poke:I

    .line 81
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/haku/taptapme/DashboardActivity;->ivAvatar:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 86
    .end local v0    # "avatarUrl":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnPlay:Landroid/widget/Button;

    new-instance v1, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/DashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnInventory:Landroid/widget/Button;

    new-instance v1, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda1;-><init>(Lcom/haku/taptapme/DashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->btnShop:Landroid/widget/Button;

    new-instance v1, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/DashboardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/haku/taptapme/DashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvPoints:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/haku/taptapme/DashboardActivity;->tvPoints:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trainer Points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/haku/taptapme/DashboardActivity;->dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v2}, Lcom/haku/taptapme/utils/DatabaseHelper;->getAccountMetric()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void
.end method

.method public startTimerService()V
    .locals 3

    .line 32
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/haku/taptapme/DashboardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/haku/taptapme/DashboardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/utils/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public stopTimerService()V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/utils/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/DashboardActivity;->stopService(Landroid/content/Intent;)Z

    .line 45
    return-void
.end method
