.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb39a, %r14
nop
nop
sub $32340, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x35fa, %rdx
nop
nop
cmp $58330, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1cb62, %rsi
lea addresses_WC_ht+0x19cfe, %rdi
clflush (%rsi)
nop
nop
nop
cmp $24703, %rdx
mov $28, %rcx
rep movsb
nop
xor $23828, %r14
lea addresses_D_ht+0x12dfa, %rsi
lea addresses_normal_ht+0x19a48, %rdi
and %r9, %r9
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $39902, %rdi
lea addresses_D_ht+0xf7fa, %rdx
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rdx
movaps %xmm2, (%rdx)
cmp $51331, %rbx
lea addresses_A_ht+0xd5fa, %rdi
nop
nop
nop
nop
xor $48549, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdi)
sub $37382, %r14
lea addresses_WC_ht+0x1b3fa, %rsi
lea addresses_UC_ht+0x123fa, %rdi
nop
nop
add $6625, %rbx
mov $28, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x1c9fa, %r9
nop
nop
nop
nop
xor %r11, %r11
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
and $45070, %rcx
lea addresses_UC_ht+0x71ba, %rsi
lea addresses_WC_ht+0xdfa, %rdi
nop
nop
nop
sub $1367, %rdx
mov $103, %rcx
rep movsl
dec %r9
lea addresses_WC_ht+0x1d5fa, %rbx
nop
nop
nop
and $27458, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x107fa, %r9
dec %r11
movw $0x6162, (%r9)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x11dfa, %r9
nop
nop
nop
nop
nop
sub $46038, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r9)
nop
nop
and $2144, %r11
lea addresses_UC_ht+0x75fa, %r14
nop
nop
nop
nop
xor $20861, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0xa597, %r14
nop
nop
nop
nop
nop
xor $33094, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xe9ba, %rsi
nop
dec %r8
mov (%rsi), %r11
cmp %rsi, %rsi

// Store
lea addresses_WC+0x160fa, %r13
nop
cmp $23792, %r14
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x1db5a, %r9
inc %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_UC+0x1877a, %rsi
lea addresses_UC+0xf1fa, %rdi
clflush (%rsi)
nop
nop
and $29810, %r11
mov $106, %rcx
rep movsw
nop
nop
sub $58056, %r11

// Store
lea addresses_D+0x179fa, %r13
and $26660, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
nop
add $49438, %rdi

// Store
mov $0x333, %r13
nop
and $57033, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
and %r9, %r9

// Load
lea addresses_PSE+0xdffa, %r9
nop
nop
nop
nop
add $33985, %r10
movb (%r9), %r8b
xor %r14, %r14

// Faulty Load
lea addresses_normal+0x175fa, %r8
nop
and %r9, %r9
mov (%r8), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'34': 2}
34 34
*/
