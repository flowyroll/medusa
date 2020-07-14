.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x626e, %rsi
lea addresses_UC_ht+0x10e6e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $47169, %rdx
mov $110, %rcx
rep movsl
nop
nop
add $39509, %r10
lea addresses_WT_ht+0x756e, %rax
nop
inc %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1dd4e, %rcx
nop
nop
nop
nop
sub $15943, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
and $29877, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x1036e, %rbp
nop
nop
nop
nop
and $64593, %r10
movb (%rbp), %r15b
lfence

// REPMOV
lea addresses_WT+0x1f206, %rsi
lea addresses_WC+0x163ce, %rdi
nop
nop
nop
nop
nop
cmp $7513, %r9
mov $97, %rcx
rep movsq
nop
nop
sub $10870, %r15

// Store
lea addresses_RW+0x1ba6e, %rsi
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movaps %xmm2, (%rsi)
nop
nop
nop
xor $17601, %r10

// Store
lea addresses_normal+0x119ae, %r11
sub $51456, %rdi
movb $0x51, (%r11)
and %rbp, %rbp

// Faulty Load
lea addresses_WT+0x466e, %rcx
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'39': 15}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
