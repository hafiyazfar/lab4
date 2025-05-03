abstract class TextExpansionStates {}

class isExpandedState extends TextExpansionStates {
  final bool isExpanded;
  isExpandedState(this.isExpanded);
}
