.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1670e, %rdx
nop
nop
nop
nop
sub $49526, %rdi
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
sub $61883, %r11
lea addresses_UC_ht+0x6c46, %rsi
lea addresses_WT_ht+0x922, %rdi
nop
nop
xor $37179, %r10
mov $13, %rcx
rep movsq
nop
nop
nop
nop
and $26554, %r11
lea addresses_A_ht+0xf556, %rcx
nop
nop
nop
nop
nop
add $46855, %rdi
mov (%rcx), %ax
nop
nop
nop
nop
nop
sub $49142, %r10
lea addresses_WT_ht+0x1536, %r10
nop
nop
nop
cmp $13731, %rcx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
inc %rsi
lea addresses_WT_ht+0x8cf2, %rsi
lea addresses_A_ht+0x140b6, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $1, %rcx
rep movsw
nop
add $48132, %rcx
lea addresses_normal_ht+0x16ea2, %rax
nop
nop
and $8944, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rax)
xor $24239, %rcx
lea addresses_A_ht+0x10f36, %rdi
nop
dec %rdx
movw $0x6162, (%rdi)
sub %rdi, %rdi
lea addresses_D_ht+0xd7b6, %rdi
nop
nop
nop
nop
nop
add $62923, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
add %rdi, %rdi
lea addresses_A_ht+0x1b8be, %rsi
lea addresses_A_ht+0x6056, %rdi
nop
sub %r11, %r11
mov $5, %rcx
rep movsw
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x16046, %rcx
nop
nop
nop
nop
nop
add $18956, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
add $22960, %r11
lea addresses_normal_ht+0x8256, %rsi
nop
nop
nop
nop
nop
cmp $61905, %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rbx

// Store
lea addresses_A+0x11c56, %rbx
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
cmp $43517, %r11

// Store
lea addresses_RW+0x1e136, %r13
nop
nop
cmp %r14, %r14
movl $0x51525354, (%r13)
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x936, %r11
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'e3': 1, 'ef': 1, '7b': 1, 'f0': 1, 'ab': 2, 'a7': 2, '83': 1, '0b': 2, '1b': 2, '60': 8634, '46': 1, '49': 10506, 'ff': 1, '6f': 1, '31': 1, 'a3': 2, '15': 1, '07': 2, 'ed': 1, 'f9': 1, 'eb': 1, '00': 2661, '77': 1, '6b': 1, '2b': 1}
00 49 00 49 00 49 60 49 49 60 49 60 49 00 49 60 60 60 49 60 49 60 60 60 60 49 00 49 49 60 49 60 49 60 00 49 60 49 49 60 00 49 49 60 60 60 60 60 60 60 60 60 60 60 60 60 49 60 00 60 00 49 60 00 49 60 00 49 60 00 49 49 60 49 49 60 49 60 49 60 49 49 60 49 49 60 49 00 00 00 49 49 60 60 49 00 49 60 49 00 00 60 49 60 60 49 49 49 49 49 49 60 00 49 49 60 49 49 60 00 49 60 60 60 49 49 49 49 49 60 49 49 60 60 49 49 60 00 60 60 49 60 60 49 60 49 60 60 60 60 60 60 49 60 49 49 60 00 49 49 00 00 60 60 49 49 49 49 60 00 49 00 49 49 49 49 49 49 49 60 60 60 49 49 60 49 00 49 60 49 60 49 60 49 60 49 60 49 60 60 60 60 60 60 49 60 49 49 49 49 60 60 60 49 60 60 60 60 60 60 00 49 60 60 49 60 49 60 60 60 49 49 49 00 49 49 60 00 60 49 60 60 60 49 49 49 60 49 49 60 60 60 49 00 60 00 00 49 49 60 00 49 00 60 49 49 60 60 60 60 49 49 49 00 49 49 49 49 49 49 60 00 49 49 49 60 49 49 60 49 60 60 00 49 49 60 60 00 49 49 60 49 60 60 60 60 60 49 49 49 60 49 60 49 60 49 60 60 60 49 49 00 49 00 49 60 49 49 60 49 60 49 60 49 49 49 49 60 49 60 49 60 60 60 49 49 60 49 49 49 49 60 00 49 60 00 49 49 60 00 60 60 49 49 60 00 49 60 60 60 49 60 49 60 00 49 49 49 60 00 49 49 49 60 00 49 60 49 49 49 00 60 49 49 60 00 49 60 49 60 60 49 60 00 49 00 60 49 00 49 60 00 49 49 49 49 60 49 60 60 60 49 49 60 60 49 49 49 60 60 49 60 49 60 49 00 49 49 60 00 00 49 60 60 60 49 60 00 00 60 49 49 49 49 49 49 60 60 60 00 49 60 49 60 60 00 49 49 49 60 49 49 60 00 49 00 49 00 49 60 49 60 60 49 60 60 49 49 49 49 60 49 60 60 49 00 00 49 49 00 49 00 49 60 49 49 49 00 49 60 00 49 60 49 00 49 00 00 49 49 49 49 60 60 49 60 60 49 49 49 60 60 49 49 00 49 49 49 49 49 49 60 49 60 00 00 60 60 49 60 ab 00 60 49 60 00 60 60 49 60 60 60 00 60 49 60 00 00 49 60 60 60 60 60 49 60 60 00 00 49 49 49 60 49 49 49 49 49 49 60 60 49 49 60 60 60 49 60 49 60 60 49 60 00 49 49 60 49 49 60 49 49 60 49 49 60 49 49 49 49 49 00 49 60 49 00 49 49 60 60 49 49 60 49 49 60 49 60 00 60 49 60 49 49 00 49 60 60 60 60 49 49 60 00 49 00 49 60 60 49 00 49 60 60 60 60 60 49 60 49 49 60 60 60 00 49 60 49 49 60 60 49 60 49 60 49 00 49 49 60 49 60 00 00 49 49 60 60 49 49 60 60 60 60 00 49 49 49 49 00 49 49 49 49 00 60 49 00 60 60 00 49 49 60 00 49 49 60 49 49 49 60 00 00 49 49 49 49 49 49 60 60 49 60 60 49 60 60 00 60 60 60 00 60 60 60 60 49 49 49 60 49 60 49 00 49 49 49 60 49 00 49 00 49 49 49 60 60 60 49 60 49 49 00 49 60 49 49 60 60 60 60 49 49 60 49 60 49 60 60 60 49 49 49 60 60 49 60 49 49 60 49 60 49 60 49 49 49 49 49 49 60 00 49 49 60 49 49 60 00 49 00 60 60 49 49 60 49 60 00 49 49 49 00 49 60 49 60 00 49 60 60 49 60 60 60 49 49 00 60 60 49 60 49 60 60 60 49 49 60 49 00 49 49 60 49 49 60 60 60 49 49 49 60 60 60 60 49 60 60 49 60 49 49 60 49 49 60 60 00 49 49 60 60 00 49 49 49 60 00 49 00 49 60 49 60 00 49 00 49 49 49 49 00 49 49 49 49 49 00 60 60 60 49 49 49 60 60 49 60 00 49 49 49 49 00 49 60 60 60 49 49 49 60 60 60 49 49 49 00 00 60 60 49 60 60 49 60 49 60 49 60 60 60 60 60 60 60 60 60 00 60 60 49 00 49 60 49 49 49 49 60 60 00 49 00 60 60 00 49
*/
