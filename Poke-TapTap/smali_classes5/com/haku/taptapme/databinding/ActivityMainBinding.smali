.class public final Lcom/haku/taptapme/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnGuest:Landroid/widget/Button;

.field public final btnLogin:Landroid/widget/Button;

.field public final etEmail:Landroid/widget/EditText;

.field public final etPassword:Landroid/widget/EditText;

.field public final ivPokemonLogo:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "btnGuest"    # Landroid/widget/Button;
    .param p3, "btnLogin"    # Landroid/widget/Button;
    .param p4, "etEmail"    # Landroid/widget/EditText;
    .param p5, "etPassword"    # Landroid/widget/EditText;
    .param p6, "ivPokemonLogo"    # Landroid/widget/ImageView;
    .param p7, "tvTitle"    # Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p2, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->btnGuest:Landroid/widget/Button;

    .line 48
    iput-object p3, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->btnLogin:Landroid/widget/Button;

    .line 49
    iput-object p4, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->etEmail:Landroid/widget/EditText;

    .line 50
    iput-object p5, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->etPassword:Landroid/widget/EditText;

    .line 51
    iput-object p6, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->ivPokemonLogo:Landroid/widget/ImageView;

    .line 52
    iput-object p7, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->tvTitle:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityMainBinding;
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    sget v0, Lcom/haku/taptapme/R$id;->btnGuest:I

    .line 83
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 84
    .local v4, "btnGuest":Landroid/widget/Button;
    if-eqz v4, :cond_5

    .line 88
    sget v0, Lcom/haku/taptapme/R$id;->btnLogin:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 90
    .local v5, "btnLogin":Landroid/widget/Button;
    if-eqz v5, :cond_4

    .line 94
    sget v0, Lcom/haku/taptapme/R$id;->etEmail:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 96
    .local v6, "etEmail":Landroid/widget/EditText;
    if-eqz v6, :cond_3

    .line 100
    sget v0, Lcom/haku/taptapme/R$id;->etPassword:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 102
    .local v7, "etPassword":Landroid/widget/EditText;
    if-eqz v7, :cond_2

    .line 106
    sget v0, Lcom/haku/taptapme/R$id;->ivPokemonLogo:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    .line 108
    .local v8, "ivPokemonLogo":Landroid/widget/ImageView;
    if-eqz v8, :cond_1

    .line 112
    sget v0, Lcom/haku/taptapme/R$id;->tvTitle:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 114
    .local v9, "tvTitle":Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 118
    new-instance v2, Lcom/haku/taptapme/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v9}, Lcom/haku/taptapme/databinding/ActivityMainBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v2

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v9    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 103
    .end local v8    # "ivPokemonLogo":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 97
    .end local v7    # "etPassword":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 91
    .end local v6    # "etEmail":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 85
    .end local v5    # "btnLogin":Landroid/widget/Button;
    :cond_5
    nop

    .line 121
    .end local v4    # "btnGuest":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/haku/taptapme/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/haku/taptapme/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/haku/taptapme/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    sget v0, Lcom/haku/taptapme/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/haku/taptapme/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/haku/taptapme/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/haku/taptapme/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/haku/taptapme/databinding/ActivityMainBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
