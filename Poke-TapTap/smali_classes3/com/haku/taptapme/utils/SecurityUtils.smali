.class public Lcom/haku/taptapme/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    :try_start_0
    const-string v0, "taptapme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "SecurityUtils"

    const-string v2, "Failed to initialize native components."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSystemState()Z
    .locals 1

   const/4 v0, 0x0
   return v0
.end method

.method public static performDataValidation(Landroid/content/Context;)Z
.locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static native verifyPrivilegeLevel(Lcom/haku/taptapme/models/User;)Z
.end method

.method public static verifyRuntimeEnvironment()Z
.locals 1
    const/4 v0, 0x0
   return v0
.end method
