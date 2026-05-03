.class public Lcom/haku/taptapme/utils/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "TrialTimerChannel"


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private timerView:Landroid/widget/TextView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/haku/taptapme/utils/TimerService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/haku/taptapme/utils/TimerService;

    .line 31
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/haku/taptapme/utils/TimerService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/haku/taptapme/utils/TimerService;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 31
    iput-object p1, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/haku/taptapme/utils/TimerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/haku/taptapme/utils/TimerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/haku/taptapme/utils/TimerService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/haku/taptapme/utils/TimerService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/haku/taptapme/utils/TimerService;

    .line 31
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 4
    .param p1, "contentText"    # Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/haku/taptapme/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "notificationIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 146
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "TrialTimerChannel"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const-string v3, "Poke Adventure"

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 149
    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 151
    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 146
    return-object v2
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Guest Session Protection"

    const/4 v2, 0x1

    const-string v3, "TrialTimerChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 136
    .local v0, "serviceChannel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/haku/taptapme/utils/TimerService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 137
    .local v1, "manager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 139
    .end local v0    # "serviceChannel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentText"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Lcom/haku/taptapme/utils/TimerService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 157
    .local v0, "notification":Landroid/app/Notification;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/haku/taptapme/utils/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 158
    .local v1, "manager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    invoke-direct {p0}, Lcom/haku/taptapme/utils/TimerService;->createNotificationChannel()V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const-string v2, "Trial session active"

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    .line 43
    invoke-direct {p0, v2}, Lcom/haku/taptapme/utils/TimerService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v3, v0, v1}, Lcom/haku/taptapme/utils/TimerService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, v2}, Lcom/haku/taptapme/utils/TimerService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/haku/taptapme/utils/TimerService;->startForeground(ILandroid/app/Notification;)V

    .line 49
    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->windowManager:Landroid/view/WindowManager;

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    const-string v1, "Trial: 05:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    const/16 v0, 0x28

    .line 61
    .local v0, "paddingSide":I
    const/16 v1, 0x14

    .line 62
    .local v1, "paddingTop":I
    iget-object v2, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v9, v2

    .line 66
    .local v9, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 67
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 68
    const-string v2, "#E6212121"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69
    const-string v2, "#40FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 70
    iget-object v2, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 73
    const/16 v2, 0x7f6

    goto :goto_1

    .line 74
    :cond_1
    const/16 v2, 0x7d2

    :goto_1
    move v6, v2

    .line 76
    .local v6, "layoutType":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x108

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .end local v6    # "layoutType":I
    .local v2, "layoutType":I
    move-object v10, v3

    .line 85
    .local v10, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x51

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    const/16 v3, 0x50

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 88
    iget-object v3, p0, Lcom/haku/taptapme/utils/TimerService;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    invoke-interface {v3, v4, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v3, Lcom/haku/taptapme/utils/TimerService$1;

    const-wide/32 v5, 0x493e0

    const-wide/16 v7, 0x3e8

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/haku/taptapme/utils/TimerService$1;-><init>(Lcom/haku/taptapme/utils/TimerService;JJLandroid/graphics/drawable/GradientDrawable;)V

    .line 126
    invoke-virtual {v3}, Lcom/haku/taptapme/utils/TimerService$1;->start()Landroid/os/CountDownTimer;

    move-result-object v3

    iput-object v3, v4, Lcom/haku/taptapme/utils/TimerService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/haku/taptapme/utils/TimerService;->timerView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 173
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 163
    const/4 v0, 0x1

    return v0
.end method
