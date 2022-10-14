Assets {
  Id: 11722117068027803154
  Name: "Player Names"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5882410821658552346
      Objects {
        Id: 5882410821658552346
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 15945148229094840220
            }
          }
        }
      }
    }
    Assets {
      Id: 15945148229094840220
      Name: "Player Names"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 10088482072841024994
          Objects {
            Id: 10088482072841024994
            Name: "Player Names"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 18217793837428223
            ChildIds: 8342543447537183205
            UnregisteredParameters {
              Overrides {
                Name: "cs:Template"
                AssetReference {
                  Id: 9877328175206081428
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsFilePartition: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18217793837428223
            Name: "README"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10088482072841024994
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1131872181836566244
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8342543447537183205
            Name: "Client"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10088482072841024994
            ChildIds: 5317607112590380924
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5317607112590380924
            Name: "Player_Names_Client"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 8342543447537183205
            UnregisteredParameters {
              Overrides {
                Name: "cs:Root"
                ObjectReference {
                  SubObjectId: 10088482072841024994
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 18308077165584505484
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Player Names"
    }
    Assets {
      Id: 18308077165584505484
      Name: "Player_Names_Client"
      PlatformAssetType: 3
      TextAsset {
        Text: "local ROOT = script:GetCustomProperty(\"Root\"):WaitForObject()\r\nlocal TEMPLATE = ROOT:GetCustomProperty(\"Template\")\r\n\r\nlocal players = {}\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\nlocal function on_player_joined(player)\r\n\tif(player == LOCAL_PLAYER) then\r\n\t\treturn\r\n\tend\r\n\r\n\tlocal plate = World.SpawnAsset(TEMPLATE, { parent = script.parent })\r\n\r\n\tplate:GetChildren()[1].text = player.name\r\n\tplate:AttachToPlayer(player, \"nameplate\")\r\n\tplayers[player] = plate\r\n\r\n\tplate:LookAtContinuous(LOCAL_PLAYER, true)\r\nend\r\n\r\nlocal function on_player_left(player)\r\n\tif(player == LOCAL_PLAYER) then\r\n\t\treturn\r\n\tend\r\n\r\n\tif(players[player] ~= nil) then\r\n\t\tplayers[player]:Destroy()\r\n\t\tplayers[player] = nil\r\n\tend\r\nend\r\n\r\nGame.playerJoinedEvent:Connect(on_player_joined)\r\nGame.playerLeftEvent:Connect(on_player_left)"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Player Names"
    }
    Assets {
      Id: 1131872181836566244
      Name: "README"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\n  _____  _                         _   _                           \r\n |  __ \\| |                       | \\ | |                          \r\n | |__) | | __ _ _   _  ___ _ __  |  \\| | __ _ _ __ ___   ___  ___ \r\n |  ___/| |/ _` | | | |/ _ \\ \'__| | . ` |/ _` | \'_ ` _ \\ / _ \\/ __|\r\n | |    | | (_| | |_| |  __/ |    | |\\  | (_| | | | | | |  __/\\__ \\\r\n |_|    |_|\\__,_|\\__, |\\___|_|    |_| \\_|\\__,_|_| |_| |_|\\___||___/\r\n                  __/ |                                            \r\n                 |___/      \r\n--------------------------------------------------------------------\r\n\r\nThe Player Names component is a lightweight component for showing the names above the player\'s heads. This is \r\nuseful for players to be able to see who is in the game and where they are.\r\n-----------------------------------------------------------------------------------------------------------------\r\n\r\n==========\r\nHow to use\r\n==========\r\n\r\nDrop the Player Names template into the hierarchy.\r\n\r\nTo modify the look of the name, there is a template that can be either modified or switched out by changing\r\nthe custom property on the root of the template.\r\n\r\n- Template\r\n\r\nThe template to use when creating a player\'s name.\r\n\r\n--]]\r\n"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Player Names"
    }
    Assets {
      Id: 9877328175206081428
      Name: "Player Name UI Template"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 5962017947302353644
          Objects {
            Id: 5962017947302353644
            Name: "Player Name UI Template"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9323271782057582270
            ChildIds: 18169598754644748744
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Control {
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Canvas {
                ContentType {
                  Value: "mc:ecanvascontenttype:dynamic"
                }
                Opacity: 1
                CanvasWorldSize {
                  X: 200
                  Y: 25
                }
                RedrawTime: 30
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:topleft"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:topleft"
                  }
                }
              }
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18169598754644748744
            Name: "Name"
            Transform {
              Location {
                X: -1344.73047
                Y: 1687.01807
                Z: -362.086975
              }
              Rotation {
                Yaw: 137.518143
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5962017947302353644
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Control {
              Width: 200
              Height: 60
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              UseParentWidth: true
              UseParentHeight: true
              Text {
                Color {
                  R: 0.418000042
                  G: 0.48266685
                  B: 1
                  A: 1
                }
                Size: 14
                Justification {
                  Value: "mc:etextjustify:center"
                }
                Font {
                  Id: 6229173068866797114
                }
                VerticalJustification {
                  Value: "mc:everticaljustification:center"
                }
                ShadowColor {
                  A: 1
                }
                ShadowOffset {
                }
                ScaleToFit: true
                OutlineColor {
                  A: 1
                }
                OutlineSize: 2
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Player Names"
    }
    Assets {
      Id: 6229173068866797114
      Name: "Teko Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "TekoBold_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "1bf438324b0f4444aa174f0d79f60a1b"
    OwnerAccountId: "bd602d5201b04b3fbf7be10f59c8f974"
    OwnerName: "CoreAcademy"
  }
  SerializationVersion: 119
}
IncludesAllDependencies: true
