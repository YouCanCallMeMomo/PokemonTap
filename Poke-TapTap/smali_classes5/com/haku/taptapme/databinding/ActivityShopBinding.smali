.class public final Lcom/haku/taptapme/databinding/ActivityShopBinding;
.super Ljava/lang/Object;
.source "ActivityShopBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBuyReducer:Landroid/widget/Button;

.field public final cardItem1:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvCurrentPoints:Landroid/widget/TextView;

.field public final tvShopTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "btnBuyReducer"    # Landroid/widget/Button;
    .param p3, "cardItem1"    # Landroidx/cardview/widget/CardView;
    .param p4, "tvCurrentPoints"    # Landroid/widget/TextView;
    .param p5, "tvShopTitle"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p2, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->btnBuyReducer:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->cardItem1:Landroidx/cardview/widget/CardView;

    .line 42
    iput-object p4, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->tvCurrentPoints:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->tvShopTitle:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityShopBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/haku/taptapme/R$id;->btnBuyReducer:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 75
    .local v4, "btnBuyReducer":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 79
    sget v0, Lcom/haku/taptapme/R$id;->cardItem1:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 81
    .local v5, "cardItem1":Landroidx/cardview/widget/CardView;
    if-eqz v5, :cond_2

    .line 85
    sget v0, Lcom/haku/taptapme/R$id;->tvCurrentPoints:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 87
    .local v6, "tvCurrentPoints":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 91
    sget v0, Lcom/haku/taptapme/R$id;->tvShopTitle:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 93
    .local v7, "tvShopTitle":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 97
    new-instance v2, Lcom/haku/taptapme/databinding/ActivityShopBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/haku/taptapme/databinding/ActivityShopBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v7    # "tvShopTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v6    # "tvCurrentPoints":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 76
    .end local v5    # "cardItem1":Landroidx/cardview/widget/CardView;
    :cond_3
    nop

    .line 100
    .end local v4    # "btnBuyReducer":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/haku/taptapme/databinding/ActivityShopBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/haku/taptapme/databinding/ActivityShopBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityShopBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityShopBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/haku/taptapme/R$layout;->activity_shop:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/haku/taptapme/databinding/ActivityShopBinding;->bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityShopBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/haku/taptapme/databinding/ActivityShopBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/haku/taptapme/databinding/ActivityShopBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
