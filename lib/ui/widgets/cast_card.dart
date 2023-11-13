part of 'widgets.dart';


class CastCard extends StatelessWidget {
  final EdgeInsets margin;
  final String? profilePath;
  final String name;
  const CastCard(
      {super.key,
      this.profilePath,
      required this.name,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 150,
            decoration: BoxDecoration(
                color: profilePath != null ? warnaApp.primary : Colors.white,
                image: DecorationImage(
                    image: profilePath != null
                        ? NetworkImage(
                            'https://image.tmdb.org/t/p//w185/$profilePath')
                        : const AssetImage('assets/user_pic.png')
                            as ImageProvider,
                    fit: profilePath != null ? BoxFit.cover : BoxFit.contain)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: teksApp.bodyMedium!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}

class CastCardSkeleton extends StatelessWidget {
  final EdgeInsets margin;

  const CastCardSkeleton({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 110,
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerContainer(
            height: 150,
            width: 110,
          ),
          SizedBox(
            height: 10,
          ),
          const ShimmerContainer(height: 24.0)
        ],
      ),
    );
  }
}
