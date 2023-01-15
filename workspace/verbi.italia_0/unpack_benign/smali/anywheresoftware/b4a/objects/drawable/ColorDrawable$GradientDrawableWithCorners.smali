.class public Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;
.super Landroid/graphics/drawable/GradientDrawable;
.source "ColorDrawable.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientDrawableWithCorners"
.end annotation


# instance fields
.field public cornerRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 0
    .param p1, "o"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 45
    return-void
.end method


# virtual methods
.method public setCornerRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49
    iput p1, p0, Lanywheresoftware/b4a/objects/drawable/ColorDrawable$GradientDrawableWithCorners;->cornerRadius:F

    .line 50
    return-void
.end method
