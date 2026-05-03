.class public final Lcom/haku/taptapme/databinding/ActivityDashboardBinding;
.super Ljava/lang/Object;
.source "ActivityDashboardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnInventory:Landroid/widget/Button;

.field public final btnPlay:Landroid/widget/Button;

.field public final btnShop:Landroid/widget/Button;

.field public final ivAvatar:Landroid/widget/ImageView;

.field public final main:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvLicense:Landroid/widget/TextView;

.field public final tvPoints:Landroid/widget/TextView;

.field public final tvWelcomeName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "btnInventory"    # Landroid/widget/Button;
    .param p3, "btnPlay"    # Landroid/widget/Button;
    .param p4, "btnShop"    # Landroid/widget/Button;
    .param p5, "ivAvatar"    # Landroid/widget/ImageView;
    .param p6, "main"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p7, "tvLicense"    # Landroid/widget/TextView;
    .param p8, "tvPoints"    # Landroid/widget/TextView;
    .param p9, "tvWelcomeName"    # Landroid/widget/TextView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p2, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->btnInventory:Landroid/widget/Button;

    .line 54
    iput-object p3, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->btnPlay:Landroid/widget/Button;

    .line 55
    iput-object p4, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->btnShop:Landroid/widget/Button;

    .line 56
    iput-object p5, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->ivAvatar:Landroid/widget/ImageView;

    .line 57
    iput-object p6, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->main:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    iput-object p7, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->tvLicense:Landroid/widget/TextView;

    .line 59
    iput-object p8, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->tvPoints:Landroid/widget/TextView;

    .line 60
    iput-object p9, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->tvWelcomeName:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityDashboardBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 90
    sget v0, Lcom/haku/taptapme/R$id;->btnInventory:I

    .line 91
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 92
    .local v4, "btnInventory":Landroid/widget/Button;
    if-eqz v4, :cond_6

    .line 96
    sget v0, Lcom/haku/taptapme/R$id;->btnPlay:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 98
    .local v5, "btnPlay":Landroid/widget/Button;
    if-eqz v5, :cond_5

    .line 102
    sget v0, Lcom/haku/taptapme/R$id;->btnShop:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    .line 104
    .local v6, "btnShop":Landroid/widget/Button;
    if-eqz v6, :cond_4

    .line 108
    sget v0, Lcom/haku/taptapme/R$id;->ivAvatar:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 110
    .local v7, "ivAvatar":Landroid/widget/ImageView;
    if-eqz v7, :cond_3

    .line 114
    move-object v8, p0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 116
    .local v8, "main":Landroidx/constraintlayout/widget/ConstraintLayout;
    sget v0, Lcom/haku/taptapme/R$id;->tvLicense:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 118
    .local v9, "tvLicense":Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 122
    sget v0, Lcom/haku/taptapme/R$id;->tvPoints:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 124
    .local v10, "tvPoints":Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 128
    sget v0, Lcom/haku/taptapme/R$id;->tvWelcomeName:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 130
    .local v11, "tvWelcomeName":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 134
    new-instance v2, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v11}, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 131
    :cond_0
    goto :goto_0

    .line 125
    .end local v11    # "tvWelcomeName":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 119
    .end local v10    # "tvPoints":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 111
    .end local v8    # "main":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v9    # "tvLicense":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 105
    .end local v7    # "ivAvatar":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 99
    .end local v6    # "btnShop":Landroid/widget/Button;
    :cond_5
    goto :goto_0

    .line 93
    .end local v5    # "btnPlay":Landroid/widget/Button;
    :cond_6
    nop

    .line 137
    .end local v4    # "btnInventory":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/haku/taptapme/databinding/ActivityDashboardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityDashboardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 77
    sget v0, Lcom/haku/taptapme/R$layout;->activity_dashboard:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityDashboardBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/haku/taptapme/databinding/ActivityDashboardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
