.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6edd, %r8
nop
nop
nop
nop
add $37327, %r9
mov (%r8), %r12
nop
nop
nop
nop
and $30024, %r12
lea addresses_WC_ht+0x10846, %rsi
lea addresses_UC_ht+0x1c4ed, %rdi
nop
nop
nop
and $21729, %r12
mov $95, %rcx
rep movsq
add %r9, %r9
lea addresses_D_ht+0x124ed, %rsi
and %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rsi)
nop
and %rsi, %rsi
lea addresses_D_ht+0xddd5, %r11
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1e921, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
nop
sub $3635, %rcx
lea addresses_UC_ht+0xcded, %r8
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r8)
nop
nop
add %r9, %r9
lea addresses_WC_ht+0xdced, %r9
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x18add, %rsi
lea addresses_WT_ht+0x88ed, %rdi
clflush (%rsi)
nop
nop
inc %r13
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
and $33705, %rcx
lea addresses_UC_ht+0x133ed, %rsi
lea addresses_normal_ht+0xcff9, %rdi
nop
nop
nop
nop
nop
xor $62924, %r8
mov $41, %rcx
rep movsq
nop
nop
sub $28701, %r9
lea addresses_A_ht+0x1a6ad, %r11
nop
nop
nop
xor $24845, %rdi
movups (%r11), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
cmp $40106, %r9
lea addresses_A_ht+0x696d, %rsi
lea addresses_WT_ht+0x70ed, %rdi
nop
xor $11612, %r9
mov $17, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0xe4ed, %rsi
lea addresses_D_ht+0x59ed, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r9
mov $115, %rcx
rep movsb
cmp $46623, %rsi
lea addresses_WC_ht+0x54ed, %rsi
lea addresses_WC_ht+0xbf74, %rdi
nop
nop
nop
sub %r12, %r12
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_US+0x3c3d, %rbp
nop
nop
cmp $8049, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
add $45345, %r11

// Store
lea addresses_RW+0x12399, %r9
nop
nop
nop
nop
xor $58695, %r13
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0x60180c00000005ed, %r11
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x2cbd, %rdx
nop
nop
nop
nop
add $32262, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
add $13707, %r8

// Load
lea addresses_UC+0x134ed, %rdx
nop
nop
nop
nop
sub %r9, %r9
movb (%rdx), %r13b
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x1aced, %rbp
sub $12089, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%rbp)
nop
nop
nop
nop
nop
xor $64436, %r8

// Faulty Load
lea addresses_WC+0x1aced, %r9
clflush (%r9)
nop
nop
nop
nop
sub %r8, %r8
mov (%r9), %r11w
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'35': 1, '58': 21828}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
