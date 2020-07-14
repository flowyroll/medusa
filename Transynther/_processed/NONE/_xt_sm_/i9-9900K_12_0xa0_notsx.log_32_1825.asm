.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9eef, %rbp
nop
nop
nop
nop
inc %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x88c6, %r11
clflush (%r11)
nop
sub %r10, %r10
movb (%r11), %dl
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x14906, %rsi
lea addresses_D_ht+0xf005, %rdi
nop
inc %r11
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
and $64507, %r10
lea addresses_WC_ht+0x304a, %rsi
lea addresses_UC_ht+0x11c22, %rdi
nop
nop
sub %rdx, %rdx
mov $11, %rcx
rep movsq
nop
nop
add $64935, %r11
lea addresses_WC_ht+0x1352a, %rsi
lea addresses_normal_ht+0xfc22, %rdi
nop
nop
dec %r10
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1cea2, %rbp
nop
nop
nop
sub %r10, %r10
mov (%rbp), %rsi
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x140ed, %rsi
lea addresses_UC_ht+0x2fbe, %rdi
nop
xor $3015, %rbp
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0xed7e, %r13
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
dec %r13
lea addresses_A_ht+0xb7a2, %rsi
lea addresses_UC_ht+0x1cc22, %rdi
nop
nop
nop
nop
nop
sub $30145, %rbp
mov $0, %rcx
rep movsl
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x112da, %rcx
and %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
xor $45551, %rbp
lea addresses_UC_ht+0x7122, %r11
nop
nop
nop
nop
xor $35405, %rdx
movb $0x61, (%r11)
cmp $38719, %rdi
lea addresses_UC_ht+0x135f6, %rcx
nop
cmp %rdx, %rdx
mov (%rcx), %r11w
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x190f2, %rdi
nop
nop
nop
nop
sub $41017, %rbp
movb $0x61, (%rdi)
nop
nop
and $23627, %rcx
lea addresses_D_ht+0x4422, %rbp
clflush (%rbp)
nop
nop
nop
xor $27346, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
and %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rdi

// Load
lea addresses_WT+0x7022, %r13
nop
nop
cmp $60230, %rdi
movb (%r13), %al
nop
nop
and $14401, %rdi

// Store
mov $0x1dabbd0000000fa2, %r10
nop
nop
and %r13, %r13
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_PSE+0x18c22, %r15
nop
nop
nop
nop
nop
xor $46117, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r15)
nop
sub $17256, %r13

// Faulty Load
lea addresses_PSE+0x18c22, %r15
nop
nop
nop
nop
and $35147, %r13
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'58': 32}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
