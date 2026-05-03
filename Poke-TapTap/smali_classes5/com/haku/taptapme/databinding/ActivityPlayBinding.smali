.class public final Lcom/haku/taptapme/databinding/ActivityPlayBinding;
.super Ljava/lang/Object;
.source "ActivityPlayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivPokemonTarget:Landroid/widget/ImageView;

.field public final pbCapture:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvProgressInfo:Landroid/widget/TextView;

.field public final tvStatus:Landroid/widget/TextView;

.field public final tvTapCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "ivPokemonTarget"    # Landroid/widget/ImageView;
    .param p3, "pbCapture"    # Landroid/widget/ProgressBar;
    .param p4, "tvProgressInfo"    # Landroid/widget/TextView;
    .param p5, "tvStatus"    # Landroid/widget/TextView;
    .param p6, "tvTapCount"    # Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    iput-object p2, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->ivPokemonTarget:Landroid/widget/ImageView;

    .line 44
    iput-object p3, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->pbCapture:Landroid/widget/ProgressBar;

    .line 45
    iput-object p4, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->tvProgressInfo:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->tvStatus:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->tvTapCount:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityPlayBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    sget v0, Lcom/haku/taptapme/R$id;->ivPokemonTarget:I

    .line 78
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 79
    .local v4, "ivPokemonTarget":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 83
    sget v0, Lcom/haku/taptapme/R$id;->pbCapture:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ProgressBar;

    .line 85
    .local v5, "pbCapture":Landroid/widget/ProgressBar;
    if-eqz v5, :cond_3

    .line 89
    sget v0, Lcom/haku/taptapme/R$id;->tvProgressInfo:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 91
    .local v6, "tvProgressInfo":Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 95
    sget v0, Lcom/haku/taptapme/R$id;->tvStatus:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 97
    .local v7, "tvStatus":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 101
    sget v0, Lcom/haku/taptapme/R$id;->tvTapCount:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 103
    .local v8, "tvTapCount":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 107
    new-instance v2, Lcom/haku/taptapme/databinding/ActivityPlayBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Lcom/haku/taptapme/databinding/ActivityPlayBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 104
    :cond_0
    goto :goto_0

    .line 98
    .end local v8    # "tvTapCount":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 92
    .end local v7    # "tvStatus":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 86
    .end local v6    # "tvProgressInfo":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 80
    .end local v5    # "pbCapture":Landroid/widget/ProgressBar;
    :cond_4
    nop

    .line 110
    .end local v4    # "ivPokemonTarget":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/haku/taptapme/databinding/ActivityPlayBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityPlayBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityPlayBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    sget v0, Lcom/haku/taptapme/R$layout;->activity_play:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityPlayBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/haku/taptapme/databinding/ActivityPlayBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
