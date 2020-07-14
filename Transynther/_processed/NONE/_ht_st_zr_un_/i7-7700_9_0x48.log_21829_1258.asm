.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1822, %r9
nop
nop
nop
nop
dec %r15
mov (%r9), %r14d
nop
nop
nop
nop
nop
cmp $44109, %r13
lea addresses_WC_ht+0x9ffe, %rbp
nop
nop
dec %r10
movb $0x61, (%rbp)
sub %rax, %rax
lea addresses_A_ht+0x185fe, %r13
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %r13
movaps %xmm0, (%r13)
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x14c7e, %rsi
lea addresses_normal_ht+0xe9fe, %rdi
xor %rbp, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
and $10997, %rbp
lea addresses_UC_ht+0x12e36, %rax
nop
inc %r15
mov (%rax), %ebp
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x14e7e, %r9
nop
nop
nop
and $53884, %r15
mov (%r9), %r14d
nop
nop
nop
add $44138, %r13
lea addresses_WC_ht+0x95fe, %rsi
lea addresses_D_ht+0xa3fe, %rdi
nop
nop
nop
nop
nop
cmp $58956, %r14
mov $111, %rcx
rep movsl
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x15fe, %rbp
nop
nop
nop
nop
nop
xor $47553, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
and $20887, %r10
lea addresses_normal_ht+0x1c67e, %rsi
lea addresses_WC_ht+0xee14, %rdi
nop
add %rbp, %rbp
mov $19, %rcx
rep movsl
nop
add %r14, %r14
lea addresses_D_ht+0xd9fe, %rsi
lea addresses_WT_ht+0x1dace, %rdi
clflush (%rdi)
nop
nop
cmp %r9, %r9
mov $101, %rcx
rep movsq
nop
and $45038, %rsi
lea addresses_UC_ht+0x13de, %rbp
sub %r15, %r15
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
dec %r9
lea addresses_WC_ht+0xc2fe, %rsi
lea addresses_WT_ht+0x3e3c, %rdi
clflush (%rsi)
nop
nop
nop
sub $28258, %r14
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
add $26729, %r13
lea addresses_A_ht+0x1ee8a, %rsi
lea addresses_A_ht+0x72ee, %rdi
cmp %r14, %r14
mov $92, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx

// Faulty Load
lea addresses_A+0x1b9fe, %r10
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'c4': 3, '4e': 8, '30': 3, '00': 6770, 'dc': 3, '38': 1, '75': 1, '48': 1768, '4f': 3, '74': 1, '46': 13268}
46 00 30 30 30 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 00 00 00 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 48 00 00 00 00 46 46 46 00 00 46 46 48 48 46 46 46 46 48 48 46 46 46 00 00 00 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 48 48 00 00 00 00 46 46 00 00 48 46 46 46 00 00 00 46 46 46 00 00 00 48 48 46 00 00 00 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 00 00 00 00 00 46 46 46 46 48 48 48 46 00 00 46 46 46 00 00 46 48 48 48 48 48 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 38 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 46 00 00 00 46 46 00 46 46 46 46 46 46 46 46 46 48 48 48 48 00 46 46 46 46 46 48 48 46 46 46 00 00 00 46 46 46 48 48 46 46 46 46 46 46 46 46 48 48 46 46 00 00 00 00 00 00 00 00 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 48 48 48 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 00 00 00 46 46 46 46 00 00 46 48 46 46 46 46 46 46 46 00 00 00 00 46 00 00 00 00 00 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 46 48 46 00 46 46 46 00 00 00 00 46 46 46 00 00 00 00 48 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 00 46 46 46 00 00 48 48 46 46 46 46 48 48 48 46 46 46 00 00 00 46 00 46 46 46 00 00 00 00 46 46 46 46 00 00 46 46 46 00 00 00 00 00 00 48 48 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 48 48 48 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 48 46 00 00 00 00 00 00 46 46 00 00 00 46 46 46 00 46 46 46 48 48 48 48 00 00 00 00 00 48 00 46 46 00 00 00 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 48 48 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 00 46 46 00 48 48 46 46 46 46 00 00 00 00 00 46 46 46 48 48 46 46 00 00 48 48 46 00 46 00 00 00 46 00 00 00 00 46 46 46 00 00 00 00 00 00 46 46 46 46 00 00 46 46 46 46 46 00 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 48 48 46 46 00 00 46 46 00 00 00 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 00 46 46 46 46 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 46 00 48 48 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 00 46 46 00 00 46 46 00 00 00 46 46 46 46 48 48 46 46 46 00 46 46 46 46 46 00 00 48 48 48 46 46 00 00 00 00 48 48 46 00 00 46 46 46 46 46 46 46 00 00 00 46 46 46 48 46 46 46 00 00 48 48 48 46 48 48 48 48 46 46 46 46 46 46 46 46 46 00 00 00 00 46 00 00 00 00 00 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 48 48 00 00 00 46 00
*/
