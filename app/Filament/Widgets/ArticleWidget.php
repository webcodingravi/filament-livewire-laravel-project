<?php

namespace App\Filament\Widgets;

use App\Models\Article;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;
use Filament\Widgets\ChartWidget;

class ArticleWidget extends ChartWidget
{
    protected static ?string $heading = 'Article Chart';

    protected int | string | array $columnSpan = 2;

    protected static ?int $sort = 2;

    protected function getData(): array
    {

        $data = Trend::model(Article::class)
        ->between(
            start: now()->subMonths(6),
            end: now(),
        )
        ->perMonth()
        ->count();


        return [
            'datasets' => [
                [
                    'label' => 'Article Chart',
                    'data' => $data->map(fn (TrendValue $value) => $value->aggregate),
                ],
            ],
            'labels' => $data->map(fn (TrendValue $value) => $value->date),
        ];

    }

    protected function getType(): string
    {
        return 'line';
    }
}