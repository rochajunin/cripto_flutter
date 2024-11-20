import 'package:flutter/material.dart';

/// Classe que representa uma categoria de criptomoeda.
class Category {
  final String id; // Identificador único da categoria.
  final String title; // Nome da categoria (ex.: Bitcoin, Ethereum).
  final Color color; // Cor associada à categoria.
  final double price; // Preço atual da criptomoeda.

  /// Construtor da classe [Category].
  ///
  /// Todos os parâmetros são obrigatórios, exceto pela cor que tem um valor padrão.
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange, // Cor padrão é laranja.
    required this.price, // O preço é obrigatório.
  });
}
