.class Lcom/google/android/material/slider/BaseSlider$SliderState$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider$SliderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/slider/BaseSlider$SliderState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/slider/BaseSlider$SliderState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2725
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$SliderState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcel;Lcom/google/android/material/slider/BaseSlider$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2720
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$SliderState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/slider/BaseSlider$SliderState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/slider/BaseSlider$SliderState;
    .registers 3
    .param p1, "size"    # I

    .line 2731
    new-array v0, p1, [Lcom/google/android/material/slider/BaseSlider$SliderState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2720
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$SliderState$1;->newArray(I)[Lcom/google/android/material/slider/BaseSlider$SliderState;

    move-result-object p1

    return-object p1
.end method
