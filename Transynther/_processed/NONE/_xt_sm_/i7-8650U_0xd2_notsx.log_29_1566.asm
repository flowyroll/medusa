.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xa23e, %rcx
and %r11, %r11
mov (%rcx), %di
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1e3b5, %rsi
lea addresses_WT_ht+0xc33e, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $36, %rcx
rep movsl
inc %r11
lea addresses_normal_ht+0x7b92, %r11
sub %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x1e30e, %rsi
lea addresses_UC_ht+0x13e3e, %rdi
clflush (%rsi)
nop
nop
lfence
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
add $52791, %rdi
lea addresses_WC_ht+0x8e3e, %rsi
nop
nop
add $62374, %r13
movb (%rsi), %dl
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x16dbe, %rsi
lea addresses_A_ht+0x1b5e, %rdi
dec %r13
mov $74, %rcx
rep movsw
nop
nop
nop
nop
sub $2060, %r11
lea addresses_UC_ht+0x8fcc, %rsi
lea addresses_normal_ht+0x1c63e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $51074, %rbp
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
and $55243, %rdi
lea addresses_UC_ht+0x11b3e, %r13
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
cmp $56542, %rcx
lea addresses_A_ht+0x11236, %rcx
nop
nop
nop
nop
nop
inc %r11
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x18e3e, %r13
nop
nop
nop
nop
nop
add %r11, %r11
mov (%r13), %rbp
nop
nop
add $18349, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x43e, %rsi
lea addresses_PSE+0x14246, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
and $654, %r15

// Load
lea addresses_A+0x73e, %r15
xor %rsi, %rsi
mov (%r15), %rcx
nop
nop
nop
add $18839, %rdi

// Load
lea addresses_PSE+0x148be, %r15
nop
inc %rbx
mov (%r15), %esi
cmp $46381, %rdi

// Store
lea addresses_RW+0x16e3e, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $20111, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_RW+0x16e3e, %rcx
cmp $59774, %rsi
mov (%rcx), %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'58': 29}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
