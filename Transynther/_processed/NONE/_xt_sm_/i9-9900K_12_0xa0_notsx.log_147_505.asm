.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bd9a, %r10
nop
nop
nop
xor $38697, %rbx
mov (%r10), %r8
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1dcc2, %rsi
lea addresses_D_ht+0x1089a, %rdi
nop
nop
nop
nop
nop
and $6446, %rbp
mov $71, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x168fa, %rsi
lea addresses_UC_ht+0x19a9a, %rdi
nop
add $61316, %r15
mov $64, %rcx
rep movsw
nop
xor $50476, %rbp
lea addresses_WT_ht+0x1489a, %rsi
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xa09a, %rax
nop
nop
nop
xor $7, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0xc01a, %r11
cmp $14923, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
lfence

// Store
lea addresses_D+0x1771a, %r11
clflush (%r11)
add $25971, %rbx
movw $0x5152, (%r11)
dec %r12

// REPMOV
lea addresses_A+0x1a89a, %rsi
lea addresses_WT+0x753a, %rdi
nop
nop
nop
nop
nop
and $32862, %r11
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
add $5255, %rsi

// Store
lea addresses_UC+0x7d1a, %rcx
nop
nop
nop
nop
cmp $4848, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovntdq %ymm0, (%rcx)
add %r9, %r9

// Faulty Load
lea addresses_PSE+0xa09a, %rax
nop
nop
nop
nop
cmp $10117, %r11
movb (%rax), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'52': 147}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
