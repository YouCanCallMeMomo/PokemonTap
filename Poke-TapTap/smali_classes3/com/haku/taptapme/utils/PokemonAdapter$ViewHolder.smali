.class public Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PokemonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haku/taptapme/utils/PokemonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field ivPokemon:Landroid/widget/ImageView;

.field tvName:Landroid/widget/TextView;

.field tvTypes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 84
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    sget v0, Lcom/haku/taptapme/R$id;->ivPokemon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->ivPokemon:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/haku/taptapme/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/haku/taptapme/R$id;->tvTypes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/utils/PokemonAdapter$ViewHolder;->tvTypes:Landroid/widget/TextView;

    .line 88
    return-void
.end method
