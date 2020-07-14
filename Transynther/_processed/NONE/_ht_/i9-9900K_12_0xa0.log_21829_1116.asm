.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xab21, %r13
nop
nop
dec %rdx
movb (%r13), %r12b
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x127a1, %rbx
nop
nop
add $27595, %rbp
movb (%rbx), %r8b
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x15b01, %r12
nop
nop
nop
nop
nop
cmp $26207, %rcx
mov (%r12), %r13d
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x5821, %rbp
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1c821, %rbp
nop
sub $57753, %r13
movb $0x61, (%rbp)
nop
sub $44430, %rbp
lea addresses_normal_ht+0x130b9, %r12
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r12)
nop
dec %r12
lea addresses_normal_ht+0x6d61, %rsi
lea addresses_D_ht+0x2c21, %rdi
nop
inc %rbp
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $64226, %rbp
lea addresses_WT_ht+0xfb49, %rsi
lea addresses_WC_ht+0x18b21, %rdi
clflush (%rsi)
nop
nop
nop
and $35963, %r8
mov $104, %rcx
rep movsb
nop
and $50987, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9

// Faulty Load
lea addresses_A+0xe321, %r13
nop
nop
nop
nop
cmp $21245, %r10
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'44': 3690, '49': 18139}
49 44 49 49 49 44 44 49 49 44 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 44 44 44 49 49 49 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 44 49 49 49 44 49 49 44 49 49 49 44 44 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 44 49 49 49 44 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 49 49 49 49 44 49 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 44 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 44 49 44 49 44 49 44 49 49 49 49 49 49 49 44 49 44 44 44 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 44 49 49 49 49 49 49 44 49 49 49 49 44 49 49 44 49 49 44 49 49 49 49 44 49 49 49 49 49 44 49 44 44 49 44 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 44 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 44 49 49 49 44 49 49 49 44 49 44 44 49 49 44 44 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 44 49 49 44 49 49 49 49 44 44 49 49 44 49 49 49 49 49 49 44 49 49 49 49 44 44 44 44 49 44 49 49 49 49 44 49 49 49 49 44 49 49 49 44 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 44 49 49 44 44 49 49 44 49 49 49 44 49 49 49 49 44 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 44 44 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 44 49 49 49 49 49 44 49 49 44 49 49 49 44 44 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 44 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49
*/
