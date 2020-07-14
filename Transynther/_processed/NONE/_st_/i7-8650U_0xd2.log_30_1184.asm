.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x76dd, %rsi
lea addresses_WT_ht+0xc25d, %rdi
nop
nop
nop
nop
and $51321, %r9
mov $24, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x15d, %rbp
nop
dec %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rbp)
xor %rcx, %rcx
lea addresses_A_ht+0x12fc5, %rcx
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rcx)
nop
nop
and %rax, %rax
lea addresses_A_ht+0x1310d, %rsi
lea addresses_normal_ht+0x13f39, %rdi
clflush (%rsi)
nop
nop
inc %r11
mov $8, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1755d, %rsi
lea addresses_UC_ht+0x1141d, %rdi
nop
nop
nop
nop
xor $26359, %r12
mov $103, %rcx
rep movsb
and %rbp, %rbp
lea addresses_A_ht+0x1035d, %r11
nop
nop
xor $7691, %r9
mov (%r11), %rax
nop
nop
nop
nop
and $19162, %rsi
lea addresses_WT_ht+0x1e55d, %rsi
nop
nop
and $13718, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
inc %r9
lea addresses_UC_ht+0x85d, %rsi
lea addresses_UC_ht+0x12a5d, %rdi
cmp %r9, %r9
mov $44, %rcx
rep movsb
nop
add $80, %rbp
lea addresses_D_ht+0x1ae5d, %rsi
nop
nop
nop
mfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rsi
movaps %xmm1, (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Load
lea addresses_A+0x625d, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdi), %r8d
add $13215, %rdi

// Store
lea addresses_RW+0x1e9ad, %r11
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
cmp $45746, %r15

// Store
lea addresses_UC+0x1125d, %r15
nop
nop
nop
nop
nop
add $31790, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r15)
nop
cmp %r9, %r9

// Store
lea addresses_D+0xa59d, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add $17037, %r13
movb $0x51, (%r11)
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x164dd, %r13
nop
nop
sub $40773, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
xor $15266, %r8

// Store
lea addresses_A+0x1697d, %r13
nop
nop
and $55306, %r15
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
mov $0x3342770000000a5d, %rcx
nop
nop
nop
cmp $3888, %r9
movb $0x51, (%rcx)
nop
nop
and $44820, %r8

// Faulty Load
lea addresses_A+0x625d, %rcx
nop
nop
nop
nop
dec %r15
movb (%rcx), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 30}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
