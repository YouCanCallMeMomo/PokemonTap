.class public Lcom/haku/taptapme/utils/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static instance:Lcom/haku/taptapme/utils/SoundManager;


# instance fields
.field private context:Landroid/content/Context;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/haku/taptapme/utils/SoundManager;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/haku/taptapme/utils/SoundManager;->toneGenerator:Landroid/media/ToneGenerator;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/haku/taptapme/utils/SoundManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/haku/taptapme/utils/SoundManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/haku/taptapme/utils/SoundManager;->instance:Lcom/haku/taptapme/utils/SoundManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/haku/taptapme/utils/SoundManager;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/utils/SoundManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/haku/taptapme/utils/SoundManager;->instance:Lcom/haku/taptapme/utils/SoundManager;

    .line 28
    :cond_0
    sget-object v1, Lcom/haku/taptapme/utils/SoundManager;->instance:Lcom/haku/taptapme/utils/SoundManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method synthetic lambda$playWinSound$0$com-haku-taptapme-utils-SoundManager()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/haku/taptapme/utils/SoundManager;->toneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x2c

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 47
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/haku/taptapme/utils/SoundManager;->toneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x35

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 49
    return-void
.end method

.method public playTapSound()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/haku/taptapme/utils/SoundManager;->toneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 38
    return-void
.end method

.method public playWinSound()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/haku/taptapme/utils/SoundManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/utils/SoundManager$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/utils/SoundManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method
