.class public Lcom/haku/taptapme/models/Pokemon;
.super Ljava/lang/Object;
.source "Pokemon.java"


# instance fields
.field private elements:[Lcom/haku/taptapme/enums/Element;

.field private height:Ljava/lang/Double;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private weight:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elements"    # [Lcom/haku/taptapme/enums/Element;
    .param p3, "height"    # Ljava/lang/Double;
    .param p4, "weight"    # Ljava/lang/Double;
    .param p5, "imageUrl"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/haku/taptapme/models/Pokemon;->elements:[Lcom/haku/taptapme/enums/Element;

    .line 29
    iput-object p3, p0, Lcom/haku/taptapme/models/Pokemon;->height:Ljava/lang/Double;

    .line 30
    iput-object p4, p0, Lcom/haku/taptapme/models/Pokemon;->weight:Ljava/lang/Double;

    .line 31
    iput-object p5, p0, Lcom/haku/taptapme/models/Pokemon;->imageUrl:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getElements()[Lcom/haku/taptapme/enums/Element;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/haku/taptapme/models/Pokemon;->elements:[Lcom/haku/taptapme/enums/Element;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/haku/taptapme/models/Pokemon;->height:Ljava/lang/Double;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/haku/taptapme/models/Pokemon;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/haku/taptapme/models/Pokemon;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/Double;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/haku/taptapme/models/Pokemon;->weight:Ljava/lang/Double;

    return-object v0
.end method

.method public setElements([Lcom/haku/taptapme/enums/Element;)V
    .locals 0
    .param p1, "elements"    # [Lcom/haku/taptapme/enums/Element;

    .line 47
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->elements:[Lcom/haku/taptapme/enums/Element;

    .line 48
    return-void
.end method

.method public setHeight(Ljava/lang/Double;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Double;

    .line 55
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->height:Ljava/lang/Double;

    .line 56
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->imageUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setWeight(Ljava/lang/Double;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/Double;

    .line 63
    iput-object p1, p0, Lcom/haku/taptapme/models/Pokemon;->weight:Ljava/lang/Double;

    .line 64
    return-void
.end method
