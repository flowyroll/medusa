.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1249e, %r13
sub %rbx, %rbx
movb $0x61, (%r13)
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0xbf9e, %rsi
lea addresses_normal_ht+0x3e6c, %rdi
sub $23737, %r11
mov $122, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1a79e, %rdi
clflush (%rdi)
nop
nop
sub $7731, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x15df2, %rsi
clflush (%rsi)
nop
and $48272, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x17cee, %rbx
clflush (%rbx)
nop
nop
nop
add %rbp, %rbp
movw $0x6162, (%rbx)
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x59e, %rsi
lea addresses_normal_ht+0x1519e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r9, %r9
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x739e, %rsi
lea addresses_A_ht+0x17f7e, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $60, %rcx
rep movsw
nop
nop
nop
add $36322, %rcx
lea addresses_D_ht+0x899e, %rsi
lea addresses_WC_ht+0xb69e, %rdi
nop
inc %r11
mov $41, %rcx
rep movsq
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x173ae, %r9
nop
nop
nop
nop
add %r13, %r13
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rcx
nop
add %r11, %r11
lea addresses_WT_ht+0x1e09e, %rbp
add %rsi, %rsi
mov (%rbp), %ecx
nop
nop
nop
add $27693, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x37c6, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0xe19e, %rax
clflush (%rax)
and %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovaps %ymm1, (%rax)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0x691e, %r8
nop
sub $65232, %rcx
movb $0x51, (%r8)
nop
cmp $41194, %rdx

// Faulty Load
lea addresses_RW+0x1e19e, %rax
nop
nop
nop
nop
nop
and $55556, %rdx
movb (%rax), %r11b
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'32': 3}
32 32 32
*/
