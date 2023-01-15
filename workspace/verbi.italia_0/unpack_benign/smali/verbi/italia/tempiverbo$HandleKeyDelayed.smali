.class Lverbi/italia/tempiverbo$HandleKeyDelayed;
.super Ljava/lang/Object;
.source "tempiverbo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverbi/italia/tempiverbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleKeyDelayed"
.end annotation


# instance fields
.field kc:I

.field final synthetic this$0:Lverbi/italia/tempiverbo;


# direct methods
.method private constructor <init>(Lverbi/italia/tempiverbo;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lverbi/italia/tempiverbo$HandleKeyDelayed;->this$0:Lverbi/italia/tempiverbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lverbi/italia/tempiverbo;Lverbi/italia/tempiverbo$1;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lverbi/italia/tempiverbo$HandleKeyDelayed;-><init>(Lverbi/italia/tempiverbo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lverbi/italia/tempiverbo$HandleKeyDelayed;->kc:I

    invoke-virtual {p0, v0}, Lverbi/italia/tempiverbo$HandleKeyDelayed;->runDirectly(I)Z

    .line 185
    return-void
.end method

.method public runDirectly(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 187
    sget-object v0, Lverbi/italia/tempiverbo;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lverbi/italia/tempiverbo$HandleKeyDelayed;->this$0:Lverbi/italia/tempiverbo;

    iget-object v1, v1, Lverbi/italia/tempiverbo;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v3, "activity_keypress"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v6

    .line 195
    :goto_0
    return v0

    .line 191
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 192
    iget-object v0, p0, Lverbi/italia/tempiverbo$HandleKeyDelayed;->this$0:Lverbi/italia/tempiverbo;

    invoke-virtual {v0}, Lverbi/italia/tempiverbo;->finish()V

    move v0, v6

    .line 193
    goto :goto_0

    :cond_2
    move v0, v2

    .line 195
    goto :goto_0
.end method
