.class public final enum Lcom/haku/taptapme/enums/Element;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haku/taptapme/enums/Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haku/taptapme/enums/Element;

.field public static final enum BUG:Lcom/haku/taptapme/enums/Element;

.field public static final enum DARK:Lcom/haku/taptapme/enums/Element;

.field public static final enum DRAGON:Lcom/haku/taptapme/enums/Element;

.field public static final enum ELECTRIC:Lcom/haku/taptapme/enums/Element;

.field public static final enum FAIRY:Lcom/haku/taptapme/enums/Element;

.field public static final enum FIRE:Lcom/haku/taptapme/enums/Element;

.field public static final enum FLYING:Lcom/haku/taptapme/enums/Element;

.field public static final enum GHOST:Lcom/haku/taptapme/enums/Element;

.field public static final enum GRASS:Lcom/haku/taptapme/enums/Element;

.field public static final enum GROUND:Lcom/haku/taptapme/enums/Element;

.field public static final enum ICE:Lcom/haku/taptapme/enums/Element;

.field public static final enum NORMAL:Lcom/haku/taptapme/enums/Element;

.field public static final enum POISON:Lcom/haku/taptapme/enums/Element;

.field public static final enum PSYCHIC:Lcom/haku/taptapme/enums/Element;

.field public static final enum ROCK:Lcom/haku/taptapme/enums/Element;

.field public static final enum STEEL:Lcom/haku/taptapme/enums/Element;

.field public static final enum WATER:Lcom/haku/taptapme/enums/Element;


# direct methods
.method private static synthetic $values()[Lcom/haku/taptapme/enums/Element;
    .locals 18

    .line 6
    sget-object v1, Lcom/haku/taptapme/enums/Element;->FIRE:Lcom/haku/taptapme/enums/Element;

    sget-object v2, Lcom/haku/taptapme/enums/Element;->WATER:Lcom/haku/taptapme/enums/Element;

    sget-object v3, Lcom/haku/taptapme/enums/Element;->GRASS:Lcom/haku/taptapme/enums/Element;

    sget-object v4, Lcom/haku/taptapme/enums/Element;->POISON:Lcom/haku/taptapme/enums/Element;

    sget-object v5, Lcom/haku/taptapme/enums/Element;->ELECTRIC:Lcom/haku/taptapme/enums/Element;

    sget-object v6, Lcom/haku/taptapme/enums/Element;->NORMAL:Lcom/haku/taptapme/enums/Element;

    sget-object v7, Lcom/haku/taptapme/enums/Element;->FLYING:Lcom/haku/taptapme/enums/Element;

    sget-object v8, Lcom/haku/taptapme/enums/Element;->GROUND:Lcom/haku/taptapme/enums/Element;

    sget-object v9, Lcom/haku/taptapme/enums/Element;->ROCK:Lcom/haku/taptapme/enums/Element;

    sget-object v10, Lcom/haku/taptapme/enums/Element;->BUG:Lcom/haku/taptapme/enums/Element;

    sget-object v11, Lcom/haku/taptapme/enums/Element;->GHOST:Lcom/haku/taptapme/enums/Element;

    sget-object v12, Lcom/haku/taptapme/enums/Element;->STEEL:Lcom/haku/taptapme/enums/Element;

    sget-object v13, Lcom/haku/taptapme/enums/Element;->PSYCHIC:Lcom/haku/taptapme/enums/Element;

    sget-object v14, Lcom/haku/taptapme/enums/Element;->ICE:Lcom/haku/taptapme/enums/Element;

    sget-object v15, Lcom/haku/taptapme/enums/Element;->DRAGON:Lcom/haku/taptapme/enums/Element;

    sget-object v16, Lcom/haku/taptapme/enums/Element;->DARK:Lcom/haku/taptapme/enums/Element;

    sget-object v17, Lcom/haku/taptapme/enums/Element;->FAIRY:Lcom/haku/taptapme/enums/Element;

    filled-new-array/range {v1 .. v17}, [Lcom/haku/taptapme/enums/Element;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "FIRE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->FIRE:Lcom/haku/taptapme/enums/Element;

    .line 8
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "WATER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->WATER:Lcom/haku/taptapme/enums/Element;

    .line 9
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "GRASS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->GRASS:Lcom/haku/taptapme/enums/Element;

    .line 10
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "POISON"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->POISON:Lcom/haku/taptapme/enums/Element;

    .line 11
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "ELECTRIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->ELECTRIC:Lcom/haku/taptapme/enums/Element;

    .line 12
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->NORMAL:Lcom/haku/taptapme/enums/Element;

    .line 13
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "FLYING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->FLYING:Lcom/haku/taptapme/enums/Element;

    .line 14
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "GROUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->GROUND:Lcom/haku/taptapme/enums/Element;

    .line 15
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "ROCK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->ROCK:Lcom/haku/taptapme/enums/Element;

    .line 16
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "BUG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->BUG:Lcom/haku/taptapme/enums/Element;

    .line 17
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "GHOST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->GHOST:Lcom/haku/taptapme/enums/Element;

    .line 18
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "STEEL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->STEEL:Lcom/haku/taptapme/enums/Element;

    .line 19
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "PSYCHIC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->PSYCHIC:Lcom/haku/taptapme/enums/Element;

    .line 20
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "ICE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->ICE:Lcom/haku/taptapme/enums/Element;

    .line 21
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "DRAGON"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->DRAGON:Lcom/haku/taptapme/enums/Element;

    .line 22
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "DARK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->DARK:Lcom/haku/taptapme/enums/Element;

    .line 23
    new-instance v0, Lcom/haku/taptapme/enums/Element;

    const-string v1, "FAIRY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/Element;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/Element;->FAIRY:Lcom/haku/taptapme/enums/Element;

    .line 6
    invoke-static {}, Lcom/haku/taptapme/enums/Element;->$values()[Lcom/haku/taptapme/enums/Element;

    move-result-object v0

    sput-object v0, Lcom/haku/taptapme/enums/Element;->$VALUES:[Lcom/haku/taptapme/enums/Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haku/taptapme/enums/Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/haku/taptapme/enums/Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haku/taptapme/enums/Element;

    return-object v0
.end method

.method public static values()[Lcom/haku/taptapme/enums/Element;
    .locals 1

    .line 6
    sget-object v0, Lcom/haku/taptapme/enums/Element;->$VALUES:[Lcom/haku/taptapme/enums/Element;

    invoke-virtual {v0}, [Lcom/haku/taptapme/enums/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haku/taptapme/enums/Element;

    return-object v0
.end method
