.class public Lcom/haku/taptapme/InventoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InventoryActivity.java"


# instance fields
.field private dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

.field private rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

.field private tvEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private loadLocalInventory()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/haku/taptapme/InventoryActivity;->dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->retrieveAllObjects()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "localData":Ljava/util/List;, "Ljava/util/List<Lcom/haku/taptapme/models/Pokemon;>;"
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    new-instance v3, Lcom/haku/taptapme/utils/PokemonAdapter;

    invoke-direct {v3, p0, v0}, Lcom/haku/taptapme/utils/PokemonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 46
    .local v3, "adapter":Lcom/haku/taptapme/utils/PokemonAdapter;
    iget-object v4, p0, Lcom/haku/taptapme/InventoryActivity;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    iget-object v4, p0, Lcom/haku/taptapme/InventoryActivity;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 48
    iget-object v2, p0, Lcom/haku/taptapme/InventoryActivity;->tvEmpty:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/haku/taptapme/InventoryActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    .end local v3    # "adapter":Lcom/haku/taptapme/utils/PokemonAdapter;
    :cond_0
    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/haku/taptapme/InventoryActivity;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/haku/taptapme/InventoryActivity;->tvEmpty:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/haku/taptapme/InventoryActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :cond_2
    const-string v1, "Your inventory is empty. Go catch some Pokemon!"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/haku/taptapme/R$layout;->activity_inventory:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/InventoryActivity;->setContentView(I)V

    .line 32
    sget v0, Lcom/haku/taptapme/R$id;->rvPokemon:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/InventoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/haku/taptapme/InventoryActivity;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    sget v0, Lcom/haku/taptapme/R$id;->tvEmpty:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/InventoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/InventoryActivity;->tvEmpty:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/haku/taptapme/InventoryActivity;->rvPokemon:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    new-instance v0, Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/haku/taptapme/utils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haku/taptapme/InventoryActivity;->dbHelper:Lcom/haku/taptapme/utils/DatabaseHelper;

    .line 37
    invoke-direct {p0}, Lcom/haku/taptapme/InventoryActivity;->loadLocalInventory()V

    .line 38
    return-void
.end method
