.class public final Lcom/haku/taptapme/databinding/ActivityInventoryBinding;
.super Ljava/lang/Object;
.source "ActivityInventoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvEmpty:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "rvPokemon"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "tvEmpty"    # Landroid/widget/TextView;
    .param p4, "tvTitle"    # Landroid/widget/TextView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    iput-object p2, p0, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object p3, p0, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->tvEmpty:Landroid/widget/TextView;

    .line 37
    iput-object p4, p0, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->tvTitle:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityInventoryBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    sget v0, Lcom/haku/taptapme/R$id;->rvPokemon:I

    .line 68
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .local v1, "rvPokemon":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v1, :cond_2

    .line 73
    sget v0, Lcom/haku/taptapme/R$id;->tvEmpty:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, "tvEmpty":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 79
    sget v0, Lcom/haku/taptapme/R$id;->tvTitle:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "tvTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;

    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "tvEmpty":Landroid/widget/TextView;
    :cond_2
    nop

    .line 87
    .end local v1    # "rvPokemon":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/haku/taptapme/databinding/ActivityInventoryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityInventoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityInventoryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    sget v0, Lcom/haku/taptapme/R$layout;->activity_inventory:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityInventoryBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/haku/taptapme/databinding/ActivityInventoryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
