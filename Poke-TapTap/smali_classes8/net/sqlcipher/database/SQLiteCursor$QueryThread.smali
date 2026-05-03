.class final Lnet/sqlcipher/database/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/database/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryThread"
.end annotation


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Lnet/sqlcipher/database/SQLiteCursor;


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteCursor;I)V
    .locals 0
    .param p2, "version"    # I

    .line 126
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->mThreadState:I

    .line 128
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .line 130
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 132
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v0, v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z

    .line 137
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 140
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteCursor;->access$100(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    .line 141
    .local v0, "cw":Lnet/sqlcipher/CursorWindow;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 144
    :goto_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    invoke-static {v1, v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$202(Lnet/sqlcipher/database/SQLiteCursor;Ljava/util/concurrent/locks/ReentrantLock;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    :cond_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$300(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v1

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    goto :goto_1

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$600(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/database/SQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$400(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v2

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$500(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v1

    .line 155
    .local v1, "count":I
    if-eqz v1, :cond_3

    .line 156
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 157
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$400(Lnet/sqlcipher/database/SQLiteCursor;)I

    move-result v3

    invoke-static {v2, v3}, Lnet/sqlcipher/database/SQLiteCursor;->access$512(Lnet/sqlcipher/database/SQLiteCursor;I)I

    .line 158
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v1    # "count":I
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    goto :goto_0

    .line 160
    .restart local v1    # "count":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2, v1}, Lnet/sqlcipher/database/SQLiteCursor;->access$502(Lnet/sqlcipher/database/SQLiteCursor;I)I

    .line 161
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 162
    goto :goto_1

    .line 171
    :cond_3
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    goto :goto_1

    .line 171
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    throw v1

    .line 167
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;->this$0:Lnet/sqlcipher/database/SQLiteCursor;

    invoke-static {v2}, Lnet/sqlcipher/database/SQLiteCursor;->access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 169
    nop

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
