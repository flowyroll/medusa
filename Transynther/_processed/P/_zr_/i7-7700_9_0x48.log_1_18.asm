.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb1b2, %rsi
lea addresses_UC_ht+0x10532, %rdi
nop
nop
inc %r12
mov $44, %rcx
rep movsl
nop
xor $13922, %rsi
lea addresses_WC_ht+0x12e12, %r14
nop
nop
nop
add $31509, %rdi
mov (%r14), %r11d
nop
inc %rcx
lea addresses_A_ht+0x1a932, %rdi
dec %rbp
movw $0x6162, (%rdi)
nop
nop
nop
and $65457, %r11
lea addresses_normal_ht+0x1a1fa, %rsi
nop
cmp $42733, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x85fc, %rsi
cmp $47881, %rdi
movw $0x6162, (%rsi)
add %r12, %r12
lea addresses_UC_ht+0xed82, %r11
nop
nop
nop
and $191, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xb362, %rsi
lea addresses_normal_ht+0x4c92, %rdi
nop
nop
nop
nop
mfence
mov $10, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x17db2, %rsi
lea addresses_UC_ht+0x55aa, %rdi
nop
nop
nop
add $61874, %r12
mov $20, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xabb2, %rsi
lea addresses_D_ht+0x43b2, %rdi
xor $16177, %r13
mov $95, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rcx
push %rdx

// Faulty Load
mov $0x5b2, %r11
nop
nop
sub $55464, %rbp
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'00': 1}
00
*/
