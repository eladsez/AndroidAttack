.class public Lanywheresoftware/b4a/B4AMenuItem;
.super Ljava/lang/Object;
.source "B4AMenuItem.java"


# instance fields
.field public final addToBar:Z

.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final eventName:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "addToBar"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lanywheresoftware/b4a/B4AMenuItem;->title:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p3, p0, Lanywheresoftware/b4a/B4AMenuItem;->eventName:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lanywheresoftware/b4a/B4AMenuItem;->addToBar:Z

    .line 15
    return-void
.end method
