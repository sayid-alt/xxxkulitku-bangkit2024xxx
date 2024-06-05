package com.dicoding.kulitku.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.dicoding.kulitku.R
import com.dicoding.kulitku.databinding.ItemHistoryBinding
import com.dicoding.kulitku.data.HistoryItem
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class HistoryAdapter : ListAdapter<HistoryItem, HistoryAdapter.ViewHolder>(DIFF_CALLBACK) {
    class ViewHolder(private val binding: ItemHistoryBinding) :
        RecyclerView.ViewHolder(binding.root) {
        fun bind(history: HistoryItem) {
            Glide.with(itemView)
                .load(history.imageUri)
                .placeholder(R.drawable.image_history)
                .into(binding.imgHistory)
            binding.tvLabel.text = history.label
            binding.tvTimestamp.text =  history.date.toString()
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): HistoryAdapter.ViewHolder {
        val binding = ItemHistoryBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val history = getItem(position)
        holder.bind(history)
    }

    fun parseTimestamp(timestamp: Long): String {
        val simpleDateFormat = SimpleDateFormat("yyyy-MM-dd | HH:mm", Locale.getDefault())
        val date = Date(timestamp)
        return simpleDateFormat.format(date)
    }

    companion object {
        val DIFF_CALLBACK = object : DiffUtil.ItemCallback<HistoryItem>() {
            override fun areItemsTheSame(oldItem: HistoryItem, newItem: HistoryItem): Boolean {
                return oldItem == newItem
            }

            override fun areContentsTheSame(oldItem: HistoryItem, newItem: HistoryItem): Boolean {
                return oldItem == newItem
            }
        }
    }

}