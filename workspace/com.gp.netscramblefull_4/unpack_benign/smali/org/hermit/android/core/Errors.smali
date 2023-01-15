.class public Lorg/hermit/android/core/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# static fields
.field private static activityInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lorg/hermit/android/core/Errors;",
            ">;"
        }
    .end annotation
.end field

.field private static exceptionCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static exceptionTotal:J

.field private static lastException:J

.field private static shuttingDown:Z


# instance fields
.field private appContext:Landroid/content/Context;

.field private dialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    sput-object v0, Lorg/hermit/android/core/Errors;->activityInstances:Ljava/util/HashMap;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    sput-object v0, Lorg/hermit/android/core/Errors;->exceptionCounts:Ljava/util/HashMap;

    .line 284
    sput-wide v1, Lorg/hermit/android/core/Errors;->lastException:J

    .line 285
    sput-wide v1, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    .line 288
    const/4 v0, 0x0

    sput-boolean v0, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lorg/hermit/android/core/Errors$1;

    invoke-direct {v0, p0}, Lorg/hermit/android/core/Errors$1;-><init>(Lorg/hermit/android/core/Errors;)V

    iput-object v0, p0, Lorg/hermit/android/core/Errors;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    return v0
.end method

.method static synthetic access$1(Lorg/hermit/android/core/Errors;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lorg/hermit/android/core/Errors;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lorg/hermit/android/core/Errors;->reportActivityException(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private countError(Ljava/lang/String;)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x0

    .line 251
    sget-object v3, Lorg/hermit/android/core/Errors;->exceptionCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 252
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 253
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 256
    :goto_0
    sget-object v3, Lorg/hermit/android/core/Errors;->exceptionCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 261
    .local v1, "now":J
    sget-wide v3, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    sget-wide v5, Lorg/hermit/android/core/Errors;->lastException:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x4e20

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    sput-wide v3, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    .line 262
    sput-wide v1, Lorg/hermit/android/core/Errors;->lastException:J

    .line 263
    sget-wide v3, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    cmp-long v3, v3, v9

    if-gez v3, :cond_0

    .line 264
    sput-wide v9, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    .line 265
    :cond_0
    sget-wide v3, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    .line 267
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 255
    .end local v1    # "now":J
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private getErrorString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, "text":Ljava/lang/StringBuilder;
    const-string v6, "Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ": \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 237
    .local v4, "trace":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_1

    array-length v6, v4

    if-lez v6, :cond_1

    .line 238
    const/4 v6, 0x0

    aget-object v5, v4, v6

    .line 239
    .local v5, "where":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 241
    .local v1, "line":I
    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "; "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "line":I
    .end local v5    # "where":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/hermit/android/core/Errors;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v1, Lorg/hermit/android/core/Errors;->activityInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hermit/android/core/Errors;

    .line 68
    .local v0, "instance":Lorg/hermit/android/core/Errors;
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/hermit/android/core/Errors;

    .end local v0    # "instance":Lorg/hermit/android/core/Errors;
    invoke-direct {v0, p0}, Lorg/hermit/android/core/Errors;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "instance":Lorg/hermit/android/core/Errors;
    sget-object v1, Lorg/hermit/android/core/Errors;->activityInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-object v0
.end method

.method private reportActivityException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "exString"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-boolean v2, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v1, "Unexpected Exception"

    .line 145
    .local v1, "exTitle":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/hermit/android/core/Errors;->countError(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "count":I
    sget-wide v2, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 149
    const-string v1, "Too Many Errors"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\nToo many errors: closing down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    const/4 v2, 0x1

    sput-boolean v2, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    .line 156
    :cond_2
    sget-boolean v2, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    if-nez v2, :cond_3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 157
    :cond_3
    invoke-direct {p0, v1, p2}, Lorg/hermit/android/core/Errors;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportException(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 92
    invoke-static {p0}, Lorg/hermit/android/core/Errors;->getInstance(Landroid/content/Context;)Lorg/hermit/android/core/Errors;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/hermit/android/core/Errors;->reportException(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method private reportToastException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "exString"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-boolean v0, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p2}, Lorg/hermit/android/core/Errors;->countError(Ljava/lang/String;)I

    .line 206
    sget-wide v0, Lorg/hermit/android/core/Errors;->exceptionTotal:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\nToo many errors: stopping reports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lorg/hermit/android/core/Errors;->shuttingDown:Z

    .line 212
    :cond_1
    invoke-direct {p0, p2}, Lorg/hermit/android/core/Errors;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 166
    const-string v3, "OK"

    iget-object v4, p0, Lorg/hermit/android/core/Errors;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 168
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 169
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v1, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 218
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method


# virtual methods
.method public reportException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/hermit/android/core/Errors;->getErrorString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "exString":Ljava/lang/String;
    const-string v1, "Hermit"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v1, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/hermit/android/core/Errors;->appContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lorg/hermit/android/core/Errors$2;

    invoke-direct {v2, p0, p1, v0}, Lorg/hermit/android/core/Errors$2;-><init>(Lorg/hermit/android/core/Errors;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/hermit/android/core/Errors;->reportToastException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
