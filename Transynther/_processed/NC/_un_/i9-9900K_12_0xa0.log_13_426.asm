.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x90dc, %rsi
lea addresses_WT_ht+0x198fc, %rdi
nop
nop
nop
nop
nop
xor $22677, %rbx
mov $13, %rcx
rep movsw
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1e8dc, %rcx
nop
add %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
add $1139, %rsi
lea addresses_WT_ht+0x471c, %r12
cmp $41321, %r9
movb $0x61, (%r12)
nop
nop
xor $46755, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rdx
push %rsi

// Faulty Load
mov $0x79cd8500000000dc, %rbp
nop
nop
xor $13333, %rdx
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}}
{'85': 2, 'cc': 10, 'e4': 1}
85 85 e4 cc cc cc cc cc cc cc cc cc cc
*/
