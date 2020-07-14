.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x283c, %r8
nop
nop
nop
nop
nop
and $40448, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %r8
vmovntdq %ymm0, (%r8)
sub $1745, %r9
lea addresses_normal_ht+0x1d424, %r8
cmp $7411, %rbx
mov (%r8), %r14
cmp %r14, %r14
lea addresses_WT_ht+0x257c, %rsi
lea addresses_WT_ht+0x1243c, %rdi
nop
nop
nop
sub %r8, %r8
mov $102, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_WT_ht+0xb83c, %rdx
nop
nop
dec %rdi
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r11
nop
and $38075, %rsi
lea addresses_WC_ht+0xadbc, %rsi
lea addresses_A_ht+0x83c, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $113, %rcx
rep movsb
cmp %r9, %r9
lea addresses_WT_ht+0x149c, %r9
nop
nop
nop
inc %r8
movb $0x61, (%r9)
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x1403c, %rbx
cmp %rcx, %rcx
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x15f3c, %rbx
nop
nop
nop
nop
sub $48571, %r9
mov (%rbx), %r14w
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0xb2fc, %r11
cmp %r8, %r8
movw $0x6162, (%r11)
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0xf5bc, %rsi
clflush (%rsi)
nop
nop
sub $14178, %r11
mov (%rsi), %r14
nop
nop
nop
nop
and $45560, %r14
lea addresses_A_ht+0x162bc, %rsi
lea addresses_UC_ht+0x723c, %rdi
xor $52547, %r9
mov $19, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x6080, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdi), %rbx
nop
nop
nop
nop
sub $51620, %rdx
lea addresses_WT_ht+0x1e83c, %rbx
nop
add $43360, %rdi
mov (%rbx), %rsi
nop
nop
nop
nop
add $53185, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x168e8, %rsi
lea addresses_normal+0xde3c, %rdi
nop
nop
nop
nop
nop
and $64094, %rbp
mov $14, %rcx
rep movsw
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WT+0x1aca, %r13
and %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
cmp $21029, %rsi

// Faulty Load
lea addresses_WT+0x1503c, %rdi
nop
nop
xor $36451, %r8
mov (%rdi), %ebx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'00': 332}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
