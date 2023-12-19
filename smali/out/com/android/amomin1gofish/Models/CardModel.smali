.class public Lcom/android/amomin1gofish/Models/CardModel;
.super Ljava/lang/Object;
.source "CardModel.java"


# instance fields
.field private imagePath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/CardModel;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/CardModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/CardModel;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/CardModel;->imagePath:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/CardModel;->name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .registers 2
    .param p1, "shortName"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/CardModel;->shortName:Ljava/lang/String;

    .line 31
    return-void
.end method
