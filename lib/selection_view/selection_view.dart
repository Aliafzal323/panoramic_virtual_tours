import 'package:common/constants/asset_icons.dart';
import 'package:flutter/material.dart';
import 'package:virtual_tours_bloc/video_player/view/video_player_page.dart';
import 'package:virtual_tours_bloc/virtual_tours/components/home_profile_list_tile_widget.dart';
import 'package:virtual_tours_bloc/virtual_tours/components/ink_well.dart';
import 'package:virtual_tours_bloc/virtual_tours/view/view.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Page'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VirtualToursWidget(),
            SizedBox(
              height: 20,
            ),
            VideoPlayerWidget(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const VideoPlayerPage()));
      },
      child: const HomeProfileListTileWidget(
        title: 'Video Player Page',
        subTitle: 'Click to play video player ',
        icon: AssetIcons.video,
      ),
    );
  }
}

class VirtualToursWidget extends StatelessWidget {
  const VirtualToursWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const VirtualToursPage()));
      },
      child: const HomeProfileListTileWidget(
        title: 'Virtual Tours Page',
        subTitle: 'Click to view virtual Tours',
        icon: AssetIcons.virtual_tour,
      ),
    );
  }
}
