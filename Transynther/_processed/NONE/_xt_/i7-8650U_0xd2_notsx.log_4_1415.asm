.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x176aa, %rsi
lea addresses_normal_ht+0x5562, %rdi
nop
nop
nop
inc %r9
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x12222, %rbx
nop
nop
sub $28545, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm5, (%rbx)
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1486, %r14
nop
nop
nop
nop
inc %rbp
movb $0x51, (%r14)
nop
nop
nop
inc %r15

// Store
lea addresses_D+0xdbf6, %rcx
nop
xor %rsi, %rsi
movl $0x51525354, (%rcx)
nop
sub %r15, %r15

// Store
lea addresses_normal+0x5861, %r11
nop
nop
nop
nop
and %rdi, %rdi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
inc %r14

// REPMOV
lea addresses_RW+0xe5e2, %rsi
lea addresses_D+0xb782, %rdi
nop
nop
add %r12, %r12
mov $24, %rcx
rep movsb
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0xc22, %r15
nop
nop
cmp $29507, %rcx
movb $0x51, (%r15)
add %r15, %r15

// Faulty Load
lea addresses_normal+0x9222, %rcx
clflush (%rcx)
nop
nop
and $34863, %r11
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'34': 4}
34 34 34 34
*/
