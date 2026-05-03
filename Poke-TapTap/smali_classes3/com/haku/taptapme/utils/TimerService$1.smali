.class Lcom/haku/taptapme/utils/TimerService$1;
.super Landroid/os/CountDownTimer;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haku/taptapme/utils/TimerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haku/taptapme/utils/TimerService;

.field final synthetic val$shape:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/haku/taptapme/utils/TimerService;JJLandroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haku/taptapme/utils/TimerService;
    .param p2, "arg0"    # J
    .param p4, "arg1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    iput-object p6, p0, Lcom/haku/taptapme/utils/TimerService$1;->val$shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFinish$0$com-haku-taptapme-utils-TimerService$1()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v0}, Lcom/haku/taptapme/utils/TimerService;->access$000(Lcom/haku/taptapme/utils/TimerService;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v0}, Lcom/haku/taptapme/utils/TimerService;->access$200(Lcom/haku/taptapme/utils/TimerService;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v0}, Lcom/haku/taptapme/utils/TimerService;->access$200(Lcom/haku/taptapme/utils/TimerService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v1}, Lcom/haku/taptapme/utils/TimerService;->access$000(Lcom/haku/taptapme/utils/TimerService;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/haku/taptapme/utils/TimerService;->access$002(Lcom/haku/taptapme/utils/TimerService;Landroid/widget/TextView;)Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 124
    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 8
    .param p1, "millisUntilFinished"    # J

    .line 94
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 95
    .local v2, "minutes":J
    div-long v0, p1, v0

    rem-long/2addr v0, v4

    .line 96
    .local v0, "seconds":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Trial Remaining: %02d:%02d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "timeText":Ljava/lang/String;
    iget-object v5, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v5}, Lcom/haku/taptapme/utils/TimerService;->access$000(Lcom/haku/taptapme/utils/TimerService;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v5, v4}, Lcom/haku/taptapme/utils/TimerService;->access$100(Lcom/haku/taptapme/utils/TimerService;Ljava/lang/String;)V

    .line 102
    const-wide/32 v5, 0xea60

    cmp-long v5, p1, v5

    if-gtz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/haku/taptapme/utils/TimerService$1;->this$0:Lcom/haku/taptapme/utils/TimerService;

    invoke-static {v5}, Lcom/haku/taptapme/utils/TimerService;->access$000(Lcom/haku/taptapme/utils/TimerService;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "#FF5252"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v5, p0, Lcom/haku/taptapme/utils/TimerService$1;->val$shape:Landroid/graphics/drawable/GradientDrawable;

    const/4 v7, 0x3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 106
    :cond_0
    return-void
.end method
