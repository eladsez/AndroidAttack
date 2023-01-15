.class Lanywheresoftware/b4a/keywords/Common$5;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field retries:I

.field private final synthetic val$Arguments:[Ljava/lang/Object;

.field private final synthetic val$Component:Ljava/lang/Object;

.field private final synthetic val$Sub:Ljava/lang/String;

.field private final synthetic val$mine:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$mine:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    iput-object p3, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    iput-object p4, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Arguments:[Ljava/lang/Object;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    const/4 v0, 0x5

    iput v0, p0, Lanywheresoftware/b4a/keywords/Common$5;->retries:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x1

    .line 905
    :try_start_0
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    invoke-static {v1, v2}, Lanywheresoftware/b4a/keywords/Common;->access$0(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    .line 906
    .local v0, "ba":Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 908
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    instance-of v1, v1, Lanywheresoftware/b4a/B4AClass;

    if-eqz v1, :cond_1

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object context is paused. Ignoring CallSubDelayed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 962
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    invoke-static {v1, v2}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v11

    .line 913
    .local v11, "i":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 914
    .local v8, "cn":Landroid/content/ComponentName;
    if-nez v8, :cond_2

    .line 915
    const-string v1, "ComponentName = null"

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 959
    .end local v0    # "ba":Lanywheresoftware/b4a/BA;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v11    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 960
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 918
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "ba":Lanywheresoftware/b4a/BA;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v11    # "i":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 919
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "mostCurrent"

    invoke-virtual {v7, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 920
    .local v10, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 921
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->retries:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 922
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAnyActivityVisible"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 925
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 924
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 926
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    invoke-static {v1, v2}, Lanywheresoftware/b4a/keywords/Common;->StartActivity(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V

    .line 933
    :cond_3
    :goto_1
    iget v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->retries:I

    sub-int/2addr v1, v4

    iput v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->retries:I

    if-lez v1, :cond_6

    .line 934
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 928
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->retries:I

    goto :goto_1

    .line 929
    :cond_5
    const-class v1, Landroid/app/Service;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 930
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Component:Ljava/lang/Object;

    invoke-static {v1, v2}, Lanywheresoftware/b4a/keywords/Common;->StartService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V

    goto :goto_1

    .line 938
    :cond_6
    if-eqz v0, :cond_7

    .line 939
    new-instance v12, Lanywheresoftware/b4a/keywords/Common$5$1;

    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Arguments:[Ljava/lang/Object;

    invoke-direct {v12, p0, v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common$5$1;-><init>(Lanywheresoftware/b4a/keywords/Common$5;Lanywheresoftware/b4a/BA;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    .local v12, "msg":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallSubDelayed - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lanywheresoftware/b4a/BA;->addMessageToPausedMessageQueue(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 948
    .end local v12    # "msg":Ljava/lang/Runnable;
    :cond_7
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Arguments:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lanywheresoftware/b4a/BA;->addMessageToUninitializeActivity(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 954
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "i":Landroid/content/Intent;
    :cond_8
    sget-boolean v1, Lanywheresoftware/b4a/BA;->shellMode:Z

    if-eqz v1, :cond_9

    .line 955
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Arguments:[Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 957
    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Sub:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lanywheresoftware/b4a/keywords/Common$5;->val$Arguments:[Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
