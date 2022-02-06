import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDLevelsScreen extends GetView<DnDLevelController> {
  static const ROUTE_NAME = "/dnd-levels-screen";

  DnDLevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DnDLevelController>(
      builder: (_) {
        int winedStarsAll = _.winedStarsAll();
        int maxStarsAll = _.maxStarsAll();

        return CommonsLevelsThemeScreen<DnDLevelDomain>(
          tutorialTile: CommonsLevelsThemeSingleTile<DnDLevelDomain>(
            winedStars: DnDLevelTutorial.tutorialSubLevelProgress().stars,
            maxStars: DnDSubLevelController.MAX_STARS,
            //levelDomain para generar las cosas de aqui
            singleLevelDomain: DnDLevelTutorial.tutorial,
            //color primario, principalmente para animaciones
            colorPrimary:
                DnDLevelTutorial.tutorial.themeBackgroundImage.colorStrong,
            //tema del tile, generado a partir del `levelDomain`
            buildThemeName: (levelDomain) => levelDomain.theme,
            //foto del tema del tile, generado a partir del `levelDomain`
            buildThemeUrlImage: (levelDomain) =>
                levelDomain.themeBackgroundImage.urlImage,
            //nivel abierto, entrar directo al juego
            openWidget: DnDSubLevelLoading(
              subLevelDomain: DnDLevelTutorial.tutorialSubLevel,
              subLevelProgressDomain:
                  DnDLevelTutorial.tutorialSubLevelProgress(),
            ),
          ),
          //widget que se genera cada vez que se selecciona el aleatorio
          onRandomTap: controller.randomSubLevel,
          //lista de los niveles
          levelsFindAll: controller.findAll(),
          //background del sliver
          urlSliverBackground: DnDAssets.WALLPAPER,
          winedStars: winedStarsAll,
          maxStars: maxStarsAll,
          //builder de cada tile, uno por tema/uno por nivel
          singleThemeTileBuilder: (levelDomain) {
            //single level/tema tile por defecto
            return GetBuilder<DnDLevelController>(builder: (_) {
              int winedStars = _.winedStars(levelDomain);
              int maxStars = _.maxStars(levelDomain);

              return CommonsLevelsThemeSingleTile<DnDLevelDomain>(
                //estrellas chiquitas de cada tile
                maxStars: maxStars,
                winedStars: winedStars,

                //levelDomain para generar las cosas de aqui
                singleLevelDomain: levelDomain,
                //color primario, principalmente para animaciones
                colorPrimary: levelDomain.themeBackgroundImage.colorStrong,
                //tema del tile, generado a partir del `levelDomain`
                buildThemeName: (levelDomain) => levelDomain.theme,
                //foto del tema del tile, generado a partir del `levelDomain`
                buildThemeUrlImage: (levelDomain) =>
                    levelDomain.themeBackgroundImage.urlImage,
                //nivel abierto, lista de subniveles
                openWidget: CommonsSingleLevel<DnDSubLevelDomain>(
                  //level domain para random
                  levelDomain: levelDomain,
                  //funcion para generar un nivel random cada vez, recive por defecto el levelDomain
                  onRandomOfTap: controller.randomSubLevelOf,
                  //titulo del tema
                  themeTitle: levelDomain.theme,
                  //foto del tema, para mostrar en el sliver
                  urlThemePicture: levelDomain.themeBackgroundImage.urlImage,
                  //color fuerte relacionado con la imagen
                  colorPrimary: levelDomain.themeBackgroundImage.colorStrong,
                  //color debil relacionado con la imagen
                  colorSecondary: levelDomain.themeBackgroundImage.colorLight,

                  //estrellas grandes cuando se entra al thema como tal
                  //estrellas maximas a ganar
                  maxStars: maxStars,
                  //estrellas ganadas
                  winedStars: winedStars,

                  //lista de los subniveles del tema
                  subLevelsAll: levelDomain.sublevel,
                  //builder de cada tile
                  singleSubLevelTileBuilder: (subLevelDomain) {
                    //cargo el progreso de cada subnivel
                    DnDSubLevelProgressDomain progressDomain =
                        Get.find<DnDSubLevelProgressUseCase>().findByAll(
                      levelDomain,
                      subLevelDomain,
                    );
                    //tile generico
                    return GetBuilder<DnDLevelController>(builder: (_) {
                      return CommonsSingleSubLevelTile(
                        //el primario de aqui es el secundario del otro lado
                        colorPrimary:
                            levelDomain.themeBackgroundImage.colorLight,
                        //estrellas ganadas en el subnivel
                        stars: progressDomain.stars,
                        maxStars: DnDSubLevelController.MAX_STARS,
                        //cantidad de veces jugado el subnivel
                        contPlayedTimes: progressDomain.contPlayedTimes,
                        //nivel abierto, juego como tal
                        openWidget: DnDSubLevelLoading(
                          subLevelDomain: subLevelDomain,
                          subLevelProgressDomain: progressDomain,
                        ),
                      );
                    });
                  },
                ),
              );
            });
          },
        );
      },
    );
  }
}
