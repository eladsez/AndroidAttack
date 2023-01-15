.class Lanywheresoftware/b4a/keywords/Common$1;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->InputMap(Lanywheresoftware/b4a/objects/collections/Map;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Items:Lanywheresoftware/b4a/objects/collections/Map;

.field private final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/collections/Map;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$Items:Lanywheresoftware/b4a/objects/collections/Map;

    iput-object p2, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$items:[Ljava/lang/CharSequence;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 499
    if-eqz p3, :cond_0

    .line 500
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$Items:Lanywheresoftware/b4a/objects/collections/Map;

    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$Items:Lanywheresoftware/b4a/objects/collections/Map;

    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$1;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
