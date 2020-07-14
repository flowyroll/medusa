.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xaf88, %rsi
lea addresses_D_ht+0x1bf8, %rdi
nop
add $9495, %rdx
mov $13, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x7638, %r9
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r9)
nop
nop
xor $45891, %r14
lea addresses_normal_ht+0x1924, %rdi
nop
nop
nop
sub $36816, %rcx
mov (%rdi), %r14d
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1eb78, %rsi
lea addresses_WC_ht+0x10980, %rdi
nop
xor %rax, %rax
mov $14, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1d3f8, %rdx
nop
nop
nop
add $9446, %r14
movb $0x61, (%rdx)
nop
and %r9, %r9
lea addresses_D_ht+0xbbf8, %rsi
lea addresses_D_ht+0x3f8, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $61, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x4668, %rdx
nop
nop
nop
inc %rdi
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
dec %rdi
lea addresses_UC_ht+0x4bf8, %rsi
lea addresses_normal_ht+0x3478, %rdi
and $20808, %r9
mov $8, %rcx
rep movsq
add $1744, %rsi
lea addresses_WC_ht+0x16414, %rdx
nop
nop
add $3859, %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp $58510, %rcx
lea addresses_D_ht+0x4df8, %rsi
lea addresses_A_ht+0x1c613, %rdi
nop
and $24748, %r11
mov $1, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x13f8, %rdx
cmp %r11, %r11
movw $0x6162, (%rdx)
nop
nop
nop
nop
and $3782, %rcx
lea addresses_normal_ht+0x14cf8, %rsi
lea addresses_WT_ht+0x11dcc, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $100, %rcx
rep movsq
nop
nop
nop
nop
xor $32408, %rdi
lea addresses_UC_ht+0x5bf8, %rsi
sub %r11, %r11
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
xor $11360, %r14
lea addresses_UC_ht+0x13194, %r9
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r9)
nop
nop
sub $49253, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx

// Faulty Load
lea addresses_WT+0x63f8, %r8
clflush (%r8)
nop
nop
nop
and %r14, %r14
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'47': 4, '44': 9605, '00': 7217, '49': 2570, '48': 272, '46': 2161}
44 00 46 00 00 00 44 44 44 48 00 00 00 44 46 00 00 44 44 00 46 49 00 00 44 00 44 00 49 00 44 44 44 46 49 00 00 44 44 44 46 49 49 00 00 00 44 44 46 00 00 44 44 44 49 00 00 44 44 44 44 46 00 00 44 44 44 48 00 00 44 44 44 44 46 49 00 44 44 46 00 00 00 44 00 46 00 00 00 44 44 44 44 48 00 00 44 44 46 00 00 49 00 44 44 44 00 49 00 44 44 44 49 00 49 00 00 44 44 44 44 49 00 00 44 44 44 46 00 00 00 44 44 44 46 00 00 49 00 00 44 46 00 49 00 44 44 46 00 49 00 44 44 44 44 46 46 49 00 44 44 44 44 00 00 49 00 00 44 44 44 49 49 00 00 00 44 44 46 46 00 00 00 44 44 44 46 49 00 00 44 44 44 46 49 00 44 44 44 49 49 00 44 44 44 44 48 00 00 44 44 44 49 49 00 44 44 44 46 00 47 44 44 00 44 49 00 00 00 44 44 44 46 44 49 00 00 00 44 46 49 49 00 00 44 44 44 46 49 00 00 44 44 44 00 00 00 44 44 44 49 49 00 44 44 44 49 00 00 44 44 44 44 49 00 00 44 00 44 46 00 00 44 44 44 46 00 00 00 44 44 44 48 00 00 44 44 44 46 00 00 00 44 44 44 48 00 00 44 44 44 44 00 49 00 44 44 44 00 00 46 00 00 44 44 46 49 00 00 00 44 44 44 46 00 00 44 44 44 44 46 46 00 44 44 44 46 49 00 44 44 44 44 46 49 00 00 44 44 46 49 00 44 44 44 49 00 44 44 44 44 49 00 44 44 44 46 00 00 49 00 44 44 44 44 46 46 49 00 00 44 44 46 49 00 00 00 44 44 44 46 49 00 00 44 44 44 49 00 00 44 00 44 46 00 00 00 44 44 44 44 00 00 00 44 44 46 00 00 44 44 44 44 44 46 49 00 44 44 44 44 46 49 00 00 44 44 44 44 48 00 00 44 44 44 00 00 00 44 44 44 46 48 49 00 44 00 49 00 00 00 00 44 44 49 00 00 44 44 44 49 00 00 00 44 44 46 49 00 00 44 44 46 00 00 00 44 46 46 49 00 00 44 44 44 46 49 00 00 44 44 44 44 00 49 00 44 44 00 00 49 00 00 44 44 46 00 44 44 44 46 00 49 00 44 44 44 44 49 00 44 44 44 44 46 00 00 44 44 44 46 00 00 44 44 44 44 48 00 44 00 44 46 49 00 44 44 44 49 00 00 44 44 44 46 00 49 00 44 44 44 44 00 49 00 44 44 44 49 49 00 44 44 44 49 00 00 44 44 44 44 49 49 00 00 44 44 44 48 00 00 44 44 44 46 46 00 00 44 44 44 46 00 46 00 00 00 44 00 44 46 00 00 44 44 44 46 00 49 00 00 44 44 46 49 00 44 44 44 46 00 49 00 44 44 44 49 00 00 44 44 44 46 49 00 00 44 44 44 00 49 00 00 44 44 46 49 00 00 44 44 44 46 00 00 44 44 46 49 00 44 44 44 00 49 00 44 44 44 00 49 00 44 44 44 46 46 49 44 44 44 46 49 00 44 44 44 46 49 00 00 44 00 44 49 49 00 44 44 44 44 49 49 00 44 44 44 46 49 00 44 44 44 46 49 00 00 44 44 44 46 48 00 00 44 44 44 46 49 00 44 44 44 46 00 00 44 44 44 46 49 00 00 44 44 44 46 00 00 00 44 44 44 44 44 46 49 00 00 44 44 44 46 00 00 00 00 44 44 49 00 00 44 44 44 46 00 00 00 44 44 44 46 00 49 00 44 44 44 44 46 49 00 00 44 44 46 44 49 00 00 44 44 44 44 44 46 49 00 44 44 44 48 49 00 44 44 44 00 49 00 44 44 44 44 00 49 00 44 44 46 00 44 44 44 00 46 49 00 00 44 44 44 46 49 00 00 44 44 44 44 46 46 49 00 44 44 44 46 49 00 00 00 44 44 44 49 00 00 44 00 44 46 49 00 00 00 44 44 49 00 00 44 44 44 46 00 49 00 00 00 44 44 44 46 00 00 00 44 44 44 46 00 46 00 00 44 44 44 46 49 00 00 44 44 44 46 00 49 00 44 44 44 44 48 00 00 44 44 46 46 49 00 44 44 44 46 49 00 00 44 44 44 00 00 00 00 44 44 44 46 48 00 00 44 44 44 00 49 00 44 44 44 44 46 46 00 00 00 00
*/
