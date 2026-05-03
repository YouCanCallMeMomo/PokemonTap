.class public Lcom/haku/taptapme/ActivityPlay;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityPlay.java"


# instance fields
.field private activeObject:Lcom/haku/taptapme/models/Pokemon;

.field private coreDb:Lcom/haku/taptapme/utils/DatabaseHelper;

.field private counterX:I

.field private currentUser:Lcom/haku/taptapme/models/User;

.field private engineTimer:Ljava/util/Timer;

.field private ivPokemonTarget:Landroid/widget/ImageView;

.field private pbCapture:Landroid/widget/ProgressBar;

.field private thresholdX:I

.field private tvStatus:Landroid/widget/TextView;

.field private tvTapCount:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$tNi1-f4gw1rJjGGVbjyYh787qDE(Lcom/haku/taptapme/ActivityPlay;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    .line 34
    iput v0, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    return-void
.end method

.method static synthetic access$000(Lcom/haku/taptapme/ActivityPlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/haku/taptapme/ActivityPlay;

    .line 27
    iget v0, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    return v0
.end method

.method static synthetic access$010(Lcom/haku/taptapme/ActivityPlay;)I
    .locals 2
    .param p0, "x0"    # Lcom/haku/taptapme/ActivityPlay;

    .line 27
    iget v0, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    return v0
.end method

.method static synthetic access$100(Lcom/haku/taptapme/ActivityPlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/haku/taptapme/ActivityPlay;

    .line 27
    iget v0, p0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    return v0
.end method

.method static synthetic access$200(Lcom/haku/taptapme/ActivityPlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/haku/taptapme/ActivityPlay;

    .line 27
    invoke-direct {p0}, Lcom/haku/taptapme/ActivityPlay;->refreshDisplay()V

    return-void
.end method

.method private attachInputHandler()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->ivPokemonTarget:Landroid/widget/ImageView;

    new-instance v1, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda2;-><init>(Lcom/haku/taptapme/ActivityPlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private bootEngine()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 95
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    .line 96
    iget-object v1, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    new-instance v2, Lcom/haku/taptapme/ActivityPlay$1;

    invoke-direct {v2, p0}, Lcom/haku/taptapme/ActivityPlay$1;-><init>(Lcom/haku/taptapme/ActivityPlay;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 107
    return-void
.end method

.method private finalizeSession()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/haku/taptapme/utils/SoundManager;->getInstance(Landroid/content/Context;)Lcom/haku/taptapme/utils/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haku/taptapme/utils/SoundManager;->playWinSound()V

    .line 139
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->ivPokemonTarget:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 141
    const/16 v0, 0x32

    .line 142
    .local v0, "delta":I
    iget-object v1, p0, Lcom/haku/taptapme/ActivityPlay;->coreDb:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->syncMetricUpdate(I)V

    .line 143
    iget-object v1, p0, Lcom/haku/taptapme/ActivityPlay;->coreDb:Lcom/haku/taptapme/utils/DatabaseHelper;

    iget-object v2, p0, Lcom/haku/taptapme/ActivityPlay;->activeObject:Lcom/haku/taptapme/models/Pokemon;

    invoke-virtual {v1, v2}, Lcom/haku/taptapme/utils/DatabaseHelper;->registerObject(Lcom/haku/taptapme/models/Pokemon;)Z

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/haku/taptapme/ActivityPlay;->activeObject:Lcom/haku/taptapme/models/Pokemon;

    invoke-virtual {v2}, Lcom/haku/taptapme/models/Pokemon;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! +50 Trainer Points"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v1, p0, Lcom/haku/taptapme/ActivityPlay;->ivPokemonTarget:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda0;-><init>(Lcom/haku/taptapme/ActivityPlay;)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 150
    return-void
.end method

.method static synthetic lambda$attachInputHandler$0(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 121
    return-void
.end method

.method private prepareStage()V
    .locals 18

    .line 57
    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/haku/taptapme/models/Pokemon;

    new-instance v2, Lcom/haku/taptapme/models/Pokemon;

    const/4 v8, 0x2

    new-array v4, v8, [Lcom/haku/taptapme/enums/Element;

    sget-object v3, Lcom/haku/taptapme/enums/Element;->GRASS:Lcom/haku/taptapme/enums/Element;

    const/4 v9, 0x0

    aput-object v3, v4, v9

    sget-object v3, Lcom/haku/taptapme/enums/Element;->POISON:Lcom/haku/taptapme/enums/Element;

    const/4 v10, 0x1

    aput-object v3, v4, v10

    .line 58
    const-wide v5, 0x3fe6666666666666L    # 0.7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-wide v6, 0x401b99999999999aL    # 6.9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"

    const-string v3, "Bulbasaur"

    invoke-direct/range {v2 .. v7}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v11, Lcom/haku/taptapme/models/Pokemon;

    new-array v13, v10, [Lcom/haku/taptapme/enums/Element;

    sget-object v2, Lcom/haku/taptapme/enums/Element;->FIRE:Lcom/haku/taptapme/enums/Element;

    aput-object v2, v13, v9

    .line 59
    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const-wide/high16 v2, 0x4021000000000000L    # 8.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-string v16, "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png"

    const-string v12, "Charmander"

    invoke-direct/range {v11 .. v16}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    aput-object v11, v1, v10

    new-instance v2, Lcom/haku/taptapme/models/Pokemon;

    new-array v4, v10, [Lcom/haku/taptapme/enums/Element;

    sget-object v3, Lcom/haku/taptapme/enums/Element;->WATER:Lcom/haku/taptapme/enums/Element;

    aput-object v3, v4, v9

    .line 60
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png"

    const-string v3, "Squirtle"

    invoke-direct/range {v2 .. v7}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v11, Lcom/haku/taptapme/models/Pokemon;

    new-array v13, v10, [Lcom/haku/taptapme/enums/Element;

    sget-object v2, Lcom/haku/taptapme/enums/Element;->ELECTRIC:Lcom/haku/taptapme/enums/Element;

    aput-object v2, v13, v9

    .line 61
    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-string v16, "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png"

    const-string v12, "Pikachu"

    invoke-direct/range {v11 .. v16}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v11, v1, v2

    new-instance v12, Lcom/haku/taptapme/models/Pokemon;

    new-array v14, v8, [Lcom/haku/taptapme/enums/Element;

    sget-object v2, Lcom/haku/taptapme/enums/Element;->GHOST:Lcom/haku/taptapme/enums/Element;

    aput-object v2, v14, v9

    sget-object v2, Lcom/haku/taptapme/enums/Element;->POISON:Lcom/haku/taptapme/enums/Element;

    aput-object v2, v14, v10

    .line 62
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const-string v17, "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png"

    const-string v13, "Gastly"

    invoke-direct/range {v12 .. v17}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v12, v1, v2

    .line 65
    .local v1, "pool":[Lcom/haku/taptapme/models/Pokemon;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 66
    .local v2, "r":Ljava/util/Random;
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->activeObject:Lcom/haku/taptapme/models/Pokemon;

    .line 68
    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    iput v3, v0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    .line 70
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->coreDb:Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-virtual {v3}, Lcom/haku/taptapme/utils/DatabaseHelper;->isModifierEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->currentUser:Lcom/haku/taptapme/models/User;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->currentUser:Lcom/haku/taptapme/models/User;

    invoke-static {v3}, Lcom/haku/taptapme/utils/SecurityUtils;->verifyPrivilegeLevel(Lcom/haku/taptapme/models/User;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iget v3, v0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    div-int/2addr v3, v8

    iput v3, v0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    .line 73
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    const-string v4, "MODIFIER ACTIVE: 0.5x"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    const-string v4, "MODIFIER RESTRICTED"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    :cond_1
    :goto_0
    iput v9, v0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    .line 83
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->pbCapture:Landroid/widget/ProgressBar;

    iget v4, v0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->pbCapture:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 85
    iget-object v3, v0, Lcom/haku/taptapme/ActivityPlay;->tvTapCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Progression: 0 / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v0, Lcom/haku/taptapme/ActivityPlay;->activeObject:Lcom/haku/taptapme/models/Pokemon;

    invoke-virtual {v4}, Lcom/haku/taptapme/models/Pokemon;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/haku/taptapme/ActivityPlay;->ivPokemonTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 89
    invoke-direct {v0}, Lcom/haku/taptapme/ActivityPlay;->attachInputHandler()V

    .line 90
    invoke-direct {v0}, Lcom/haku/taptapme/ActivityPlay;->bootEngine()V

    .line 91
    return-void
.end method

.method private refreshDisplay()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->tvTapCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->pbCapture:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    return-void
.end method


# virtual methods
.method synthetic lambda$attachInputHandler$1$com-haku-taptapme-ActivityPlay(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 117
    invoke-static {p0}, Lcom/haku/taptapme/utils/SoundManager;->getInstance(Landroid/content/Context;)Lcom/haku/taptapme/utils/SoundManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haku/taptapme/utils/SoundManager;->playTapSound()V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/haku/taptapme/ActivityPlay$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    iget v1, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    .line 124
    invoke-direct {p0}, Lcom/haku/taptapme/ActivityPlay;->refreshDisplay()V

    .line 126
    iget v0, p0, Lcom/haku/taptapme/ActivityPlay;->counterX:I

    iget v1, p0, Lcom/haku/taptapme/ActivityPlay;->thresholdX:I

    if-lt v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/haku/taptapme/ActivityPlay;->finalizeSession()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/haku/taptapme/R$layout;->activity_play:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ActivityPlay;->setContentView(I)V

    .line 45
    sget v0, Lcom/haku/taptapme/R$id;->ivPokemonTarget:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ActivityPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->ivPokemonTarget:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/haku/taptapme/R$id;->pbCapture:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ActivityPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->pbCapture:Landroid/widget/ProgressBar;

    .line 47
    sget v0, Lcom/haku/taptapme/R$id;->tvTapCount:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ActivityPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->tvTapCount:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/haku/taptapme/R$id;->tvStatus:I

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/ActivityPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->tvStatus:Landroid/widget/TextView;

    .line 49
    new-instance v0, Lcom/haku/taptapme/utils/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/haku/taptapme/utils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->coreDb:Lcom/haku/taptapme/utils/DatabaseHelper;

    .line 51
    invoke-virtual {p0}, Lcom/haku/taptapme/ActivityPlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/haku/taptapme/models/User;

    iput-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->currentUser:Lcom/haku/taptapme/models/User;

    .line 53
    invoke-direct {p0}, Lcom/haku/taptapme/ActivityPlay;->prepareStage()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/ActivityPlay;->engineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    :cond_0
    return-void
.end method
