import 'package:bookly/core/widgets/custom_error_massage.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomSearchTextField(),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

