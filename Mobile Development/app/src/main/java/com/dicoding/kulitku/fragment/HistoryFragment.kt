package com.dicoding.kulitku.fragment

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import com.dicoding.kulitku.adapter.HistoryAdapter
import com.dicoding.kulitku.databinding.FragmentHistoryBinding
import com.dicoding.kulitku.data.sampleHistoryItems

class HistoryFragment : Fragment() {

    private var _binding: FragmentHistoryBinding? = null

    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {

//        val historyViewModel =
//            ViewModelProvider(this).get(HistoryViewModel::class.java)

        _binding = FragmentHistoryBinding.inflate(inflater, container, false)
        val root: View = binding.root

        // Access the activity's toolbar and set it up
        val toolbar = (activity as? AppCompatActivity)?.supportActionBar
        toolbar?.setDisplayHomeAsUpEnabled(true)
        (activity as? AppCompatActivity)?.supportActionBar?.title = "History"

        // Set up the navigation click listener for the toolbar
        binding.toolbar.setNavigationOnClickListener {
            activity?.onBackPressed()
        }

        val historyAdapter = HistoryAdapter()
        binding.rvHistory.apply {
            layoutManager = LinearLayoutManager(context)
            adapter = historyAdapter
        }
        historyAdapter.submitList(sampleHistoryItems)

//        val textView: TextView = binding.textHistory
//        historyViewModel.text.observe(viewLifecycleOwner) {
//            textView.text = it
//        }
        return root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}