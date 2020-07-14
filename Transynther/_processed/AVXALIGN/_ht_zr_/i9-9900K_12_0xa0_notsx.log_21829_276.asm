.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16038, %rsi
lea addresses_normal_ht+0x101b8, %rdi
nop
nop
sub %r14, %r14
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x8338, %rax
nop
nop
nop
nop
nop
xor $18108, %rdx
movb (%rax), %r14b
nop
nop
nop
nop
nop
add $19612, %rax
lea addresses_normal_ht+0xb738, %rdi
nop
sub %r12, %r12
movw $0x6162, (%rdi)
nop
and $31265, %rsi
lea addresses_WC_ht+0xc338, %rsi
lea addresses_WC_ht+0xfd38, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $120, %rcx
rep movsq
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x10f38, %r12
nop
nop
sub %rdi, %rdi
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
xor $20951, %r12
lea addresses_D_ht+0xb38, %rax
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rax)
nop
nop
xor $47374, %r14
lea addresses_A_ht+0x1caf8, %rsi
lea addresses_A_ht+0xb460, %rdi
nop
xor $48434, %rax
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $38097, %rdx
lea addresses_D_ht+0x2f38, %rdx
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_RW+0x9338, %r9
nop
nop
nop
nop
nop
and %r12, %r12
movaps (%r9), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'48': 13775, '44': 518, '45': 470, '49': 84, '00': 6982}
00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 00 48 00 48 48 44 48 48 00 48 48 48 00 48 00 00 00 48 48 48 48 44 00 45 48 00 48 48 48 48 00 00 48 48 48 00 00 48 48 48 44 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 48 00 48 48 00 00 48 48 00 48 00 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 00 48 48 00 00 48 48 48 48 48 00 00 00 48 00 48 48 48 48 44 48 48 00 48 00 00 48 00 48 48 48 48 48 00 00 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 44 48 48 48 48 48 48 45 00 48 44 48 48 48 48 48 00 00 48 48 00 00 48 00 00 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 00 00 45 48 48 48 45 48 00 48 48 48 00 48 00 00 48 48 00 00 48 45 48 00 48 48 00 48 00 48 48 44 48 00 48 48 48 45 48 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 00 00 00 48 00 48 48 48 48 00 48 00 48 00 48 48 48 44 00 45 48 48 00 00 00 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 00 00 48 00 00 00 48 00 00 48 48 00 48 00 48 48 48 00 00 48 00 49 48 48 48 00 48 48 48 44 00 48 48 48 00 00 48 48 48 48 48 00 48 48 00 48 48 48 00 00 48 48 00 48 48 48 00 48 00 00 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 00 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 00 48 00 48 48 48 48 48 44 00 00 48 00 48 48 00 48 48 00 00 00 00 48 48 00 48 00 48 48 48 48 00 48 00 00 48 48 48 00 00 45 48 00 48 44 48 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 00 48 48 00 00 48 00 48 48 45 48 48 48 00 00 48 00 00 48 48 48 00 00 48 00 48 48 48 48 00 48 48 00 00 48 48 48 44 00 48 00 00 48 00 00 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 45 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 48 00 48 00 00 45 48 00 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 00 48 48 00 00 48 00 44 48 48 48 00 00 48 00 48 48 00 48 48 48 48 00 00 48 44 00 48 48 48 45 48 48 48 48 48 48 00 48 00 48 48 48 48 00 44 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 00 48 00 48 44 00 00 48 00 48 00 48 48 00 00 48 00 48 48 48 48 00 48 44 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 49 48 48 48 48 48 48 48 48 48 00 48 48 48 48 49 00 48 48 44 44 48 48 48 48 48 48 48 00 00 48 48 00 48 00 00 48 00 00 45 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 45 48 48 00 00 48 00 48 48 00 00 00 00 00 48 00 00 48 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 44 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 45 45 48 00 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 00 48 00 00 00 00 00 48 00 48 48 00 48 00 00 48 00 48 00 48 48 44 49 48 48 48 45 48 48 00 48 48 48 48 00 00 48 00 00 48 00 48 48 48 48 48 48 48 48 48 44 48 00 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 00 00 48 48 44 48 00 48 00 00 48 48 48 48 00 00 44 48 00 00 00 48 00 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 00 00 00 48 48
*/
