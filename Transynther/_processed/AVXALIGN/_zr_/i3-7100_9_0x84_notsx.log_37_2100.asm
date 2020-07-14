.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1204f, %r11
nop
sub $7462, %rbx
movl $0x61626364, (%r11)
nop
xor %rax, %rax
lea addresses_WC_ht+0x1c3f3, %rsi
lea addresses_WC_ht+0x5fcf, %rdi
nop
nop
nop
nop
xor $53063, %rdx
mov $85, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xb229, %r9
inc %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r9)
add %rbx, %rbx
lea addresses_WT_ht+0xd5c3, %rsi
lea addresses_WC_ht+0x682d, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $29, %rcx
rep movsl
nop
nop
nop
and $53576, %rcx
lea addresses_WT_ht+0xe17a, %rsi
and $58466, %rbx
movb $0x61, (%rsi)
nop
and $12181, %rsi
lea addresses_D_ht+0x1102b, %rsi
lea addresses_A_ht+0x602b, %rdi
nop
nop
nop
cmp $21302, %r11
mov $43, %rcx
rep movsl
nop
nop
nop
nop
xor $58355, %rax
lea addresses_normal_ht+0xf82b, %rdx
nop
nop
sub $10928, %rdi
movb (%rdx), %bl
nop
xor $10445, %r11
lea addresses_A_ht+0x7a2b, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
add $29265, %r9
lea addresses_normal_ht+0x16a2b, %rsi
lea addresses_WC_ht+0xfbab, %rdi
cmp $46373, %rbx
mov $62, %rcx
rep movsl
nop
nop
nop
cmp $39754, %r9
lea addresses_D_ht+0x13a6b, %rsi
lea addresses_normal_ht+0x902b, %rdi
nop
inc %rbx
mov $28, %rcx
rep movsq
nop
nop
nop
nop
nop
add $46374, %rbx
lea addresses_A_ht+0x1cc2b, %rdx
clflush (%rdx)
nop
lfence
movl $0x61626364, (%rdx)
nop
nop
dec %r9
lea addresses_WT_ht+0xbfeb, %rsi
lea addresses_UC_ht+0x82ab, %rdi
clflush (%rsi)
nop
nop
nop
sub %r11, %r11
mov $84, %rcx
rep movsl
nop
nop
nop
nop
cmp $47141, %rcx
lea addresses_WT_ht+0x1c02b, %r11
nop
nop
nop
nop
nop
xor $6681, %rax
mov (%r11), %r9
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xb82b, %rbx
cmp %r11, %r11
mov (%rbx), %eax
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x482b, %rsi
lea addresses_UC_ht+0xcc2b, %rdi
nop
inc %r11
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x1602b, %r8
xor %r10, %r10
mov (%r8), %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 37}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
