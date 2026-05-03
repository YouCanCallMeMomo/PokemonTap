.class public Lcom/haku/taptapme/models/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private access_token:Ljava/lang/String;

.field private avatar_url:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inventory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/haku/taptapme/models/Pokemon;",
            ">;"
        }
    .end annotation
.end field

.field private type_license:Lcom/haku/taptapme/enums/License;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "avatar_url"    # Ljava/lang/String;
    .param p5, "type_license"    # Ljava/lang/String;
    .param p6, "access_token"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "https://i.pravatar.cc/150?u=default@pravatar.com"

    iput-object v0, p0, Lcom/haku/taptapme/models/User;->avatar_url:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/haku/taptapme/models/User;->inventory:Ljava/util/Vector;

    .line 39
    invoke-virtual {p0, p1}, Lcom/haku/taptapme/models/User;->setId(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/haku/taptapme/models/User;->setFullName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p3}, Lcom/haku/taptapme/models/User;->setEmail(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p4}, Lcom/haku/taptapme/models/User;->setAvatar_url(Ljava/lang/String;)V

    .line 43
    nop

    .line 44
    const-string v0, "trial"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0


    if-nez v0, :cond_0

    sget-object v0, Lcom/haku/taptapme/enums/License;->LEVEL_1:Lcom/haku/taptapme/enums/License;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/haku/taptapme/enums/License;->LEVEL_1:Lcom/haku/taptapme/enums/License;

    .line 43
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haku/taptapme/models/User;->setType_license(Lcom/haku/taptapme/enums/License;)V

    .line 46
    invoke-virtual {p0, p6}, Lcom/haku/taptapme/models/User;->setAccess_token(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addPokemon(Lcom/haku/taptapme/models/Pokemon;)V
    .locals 1
    .param p1, "poke"    # Lcom/haku/taptapme/models/Pokemon;

    .line 93
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->inventory:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAllPokemon()[Lcom/haku/taptapme/models/Pokemon;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->inventory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haku/taptapme/models/Pokemon;

    return-object v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeInventory()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->inventory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getType_license()Lcom/haku/taptapme/enums/License;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/haku/taptapme/models/User;->type_license:Lcom/haku/taptapme/enums/License;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar_url"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->avatar_url:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->email:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->fullName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType_license(Lcom/haku/taptapme/enums/License;)V
    .locals 0
    .param p1, "type_license"    # Lcom/haku/taptapme/enums/License;

    .line 90
    iput-object p1, p0, Lcom/haku/taptapme/models/User;->type_license:Lcom/haku/taptapme/enums/License;

    .line 91
    return-void
.end method
