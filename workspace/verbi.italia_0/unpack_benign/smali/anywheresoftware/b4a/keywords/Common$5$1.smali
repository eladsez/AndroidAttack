.class Lanywheresoftware/b4a/keywords/Common$5$1;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/keywords/Common$5;

.field private final synthetic val$Arguments:[Ljava/lang/Object;

.field private final synthetic val$Sub:Ljava/lang/String;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/keywords/Common$5;Lanywheresoftware/b4a/BA;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->this$1:Lanywheresoftware/b4a/keywords/Common$5;

    iput-object p2, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$Sub:Ljava/lang/String;

    iput-object p4, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$Arguments:[Ljava/lang/Object;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 942
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$ba:Lanywheresoftware/b4a/BA;

    const/4 v1, 0x0

    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$Sub:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lanywheresoftware/b4a/keywords/Common$5$1;->val$Arguments:[Ljava/lang/Object;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    return-void
.end method
