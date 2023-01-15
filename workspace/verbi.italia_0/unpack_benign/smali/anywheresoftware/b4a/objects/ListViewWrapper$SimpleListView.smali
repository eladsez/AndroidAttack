.class public Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
.super Landroid/widget/ListView;
.source "ListViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/ListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListView"
.end annotation


# instance fields
.field public adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 233
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-direct {v0, p1}, Lanywheresoftware/b4a/objects/SimpleListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    .line 234
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    return-void
.end method
