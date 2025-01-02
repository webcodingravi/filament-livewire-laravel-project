<?php

namespace App\Filament\Exports;

use App\Models\Faq;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class FaqExporter extends Exporter
{
    protected static ?string $model = Faq::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id'),
            ExportColumn::make('question'),
            ExportColumn::make('answer'),
            ExportColumn::make('status'),

        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your faq export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}