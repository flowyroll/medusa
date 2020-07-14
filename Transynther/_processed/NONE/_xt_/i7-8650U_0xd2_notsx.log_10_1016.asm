.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11292, %rsi
lea addresses_UC_ht+0xa512, %rdi
nop
nop
and %r13, %r13
mov $88, %rcx
rep movsw
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x1aea6, %rsi
lea addresses_UC_ht+0x12f92, %rdi
nop
nop
nop
and $8411, %rax
mov $122, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $18263, %rax
lea addresses_WC_ht+0x10a52, %rsi
lea addresses_UC_ht+0x1c74c, %rdi
clflush (%rdi)
nop
nop
dec %rbp
mov $80, %rcx
rep movsq
nop
nop
nop
nop
xor $34062, %rdi
lea addresses_WT_ht+0x7b92, %rdi
nop
nop
dec %rax
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor $53045, %r9
lea addresses_WC_ht+0x2b92, %rax
nop
sub $1602, %rbp
movb (%rax), %cl
nop
nop
nop
nop
nop
xor $61670, %rcx
lea addresses_WC_ht+0x1b692, %rcx
nop
sub %rbp, %rbp
mov (%rcx), %r13
nop
add $28948, %rdi
lea addresses_normal_ht+0x180e2, %rsi
clflush (%rsi)
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x7f92, %rsi
lea addresses_D_ht+0x13852, %rdi
and $18530, %rbp
mov $113, %rcx
rep movsq
nop
nop
nop
nop
add $18303, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x1b582, %rax
nop
nop
nop
nop
xor $57584, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovntdq %ymm2, (%rax)
nop
nop
nop
nop
add $1869, %rax

// Faulty Load
lea addresses_WT+0x12392, %r11
nop
nop
nop
cmp %r9, %r9
movb (%r11), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'39': 10}
39 39 39 39 39 39 39 39 39 39
*/
