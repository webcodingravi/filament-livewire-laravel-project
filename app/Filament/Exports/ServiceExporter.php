<?php

namespace App\Filament\Exports;

use App\Models\Service;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Exporter;
use Filament\Actions\Exports\Models\Export;

class ServiceExporter extends Exporter
{
    protected static ?string $model = Service::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id'),
            ExportColumn::make('title'),
            ExportColumn::make('slug'),
            ExportColumn::make('icon_class'),
            ExportColumn::make('short_desc'),
            ExportColumn::make('description')
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your service export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}