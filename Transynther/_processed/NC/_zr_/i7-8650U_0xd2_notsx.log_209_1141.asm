.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe6fc, %rsi
nop
nop
cmp $63385, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x301c, %rbp
clflush (%rbp)
xor $53198, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
inc %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Faulty Load
mov $0x240bc500000006fc, %rax
clflush (%rax)
nop
nop
nop
nop
nop
inc %rcx
mov (%rax), %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 209}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
