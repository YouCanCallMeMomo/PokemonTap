.class public final enum Lcom/haku/taptapme/enums/License;
.super Ljava/lang/Enum;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haku/taptapme/enums/License;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haku/taptapme/enums/License;

.field public static final enum LEVEL_0:Lcom/haku/taptapme/enums/License;

.field public static final enum LEVEL_1:Lcom/haku/taptapme/enums/License;


# direct methods
.method private static synthetic $values()[Lcom/haku/taptapme/enums/License;
    .locals 2

    .line 6
    sget-object v0, Lcom/haku/taptapme/enums/License;->LEVEL_0:Lcom/haku/taptapme/enums/License;

    sget-object v1, Lcom/haku/taptapme/enums/License;->LEVEL_1:Lcom/haku/taptapme/enums/License;

    filled-new-array {v0, v1}, [Lcom/haku/taptapme/enums/License;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/haku/taptapme/enums/License;

    const-string v1, "LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/License;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/License;->LEVEL_0:Lcom/haku/taptapme/enums/License;

    .line 8
    new-instance v0, Lcom/haku/taptapme/enums/License;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/haku/taptapme/enums/License;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/haku/taptapme/enums/License;->LEVEL_1:Lcom/haku/taptapme/enums/License;

    .line 6
    invoke-static {}, Lcom/haku/taptapme/enums/License;->$values()[Lcom/haku/taptapme/enums/License;

    move-result-object v0

    sput-object v0, Lcom/haku/taptapme/enums/License;->$VALUES:[Lcom/haku/taptapme/enums/License;

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

.method public static valueOf(Ljava/lang/String;)Lcom/haku/taptapme/enums/License;
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
    const-class v0, Lcom/haku/taptapme/enums/License;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haku/taptapme/enums/License;

    return-object v0
.end method

.method public static values()[Lcom/haku/taptapme/enums/License;
    .locals 1

    .line 6
    sget-object v0, Lcom/haku/taptapme/enums/License;->$VALUES:[Lcom/haku/taptapme/enums/License;

    invoke-virtual {v0}, [Lcom/haku/taptapme/enums/License;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haku/taptapme/enums/License;

    return-object v0
.end method
