.class public Lcom/haku/taptapme/utils/PokemonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PokemonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private pokemonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haku/taptapme/models/Pokemon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/haku/taptapme/models/Pokemon;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "pokemonList":Ljava/util/List;, "Ljava/util/List<Lcom/haku/taptapme/models/Pokemon;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->pokemonList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->pokemonList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->pokemonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/haku/taptapme/utils/PokemonAdapter;->onBindViewHolder(Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 39
    iget-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->pokemonList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haku/taptapme/models/Pokemon;

    .line 40
    .local v0, "pokemon":Lcom/haku/taptapme/models/Pokemon;
    iget-object v1, p1, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/haku/taptapme/models/Pokemon;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "typesBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v2

    .line 45
    .local v2, "elements":[Lcom/haku/taptapme/enums/Element;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 46
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 47
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 48
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/haku/taptapme/enums/Element;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_0
    const-string v4, "UNKNOWN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 54
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 58
    :cond_3
    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_2
    iget-object v3, p1, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->tvTypes:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/haku/taptapme/models/Pokemon;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 66
    const v4, 0x108003f

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    .line 67
    const v4, 0x1080078

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, p1, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->ivPokemon:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 69
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/haku/taptapme/utils/PokemonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 33
    iget-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/haku/taptapme/R$layout;->item_pokemon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
