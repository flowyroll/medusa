.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13731, %rdi
nop
nop
nop
nop
xor $46066, %r13
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
sub $62568, %r10
lea addresses_WT_ht+0x1e1b1, %rsi
lea addresses_UC_ht+0x9fb1, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r13, %r13
mov $30, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x16ab1, %rcx
clflush (%rcx)
nop
nop
cmp $48530, %r9
movb (%rcx), %r10b
nop
nop
nop
nop
nop
xor $62625, %rsi
lea addresses_UC_ht+0x16229, %r10
nop
nop
nop
nop
nop
add %r13, %r13
mov (%r10), %cx
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x18fb1, %r15
nop
add $54913, %rcx
movb (%r15), %r10b
add %r9, %r9
lea addresses_WC_ht+0x185e2, %r10
clflush (%r10)
dec %rsi
mov (%r10), %r15d
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x19551, %r15
nop
nop
nop
nop
nop
cmp $61046, %rsi
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x71a1, %rsi
nop
nop
nop
nop
nop
xor $48648, %r10
movb $0x61, (%rsi)
nop
nop
xor $51126, %r9
lea addresses_WC_ht+0xc9e1, %rcx
clflush (%rcx)
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
add $30867, %r13
lea addresses_WT_ht+0x9831, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
movb (%rdi), %r9b
nop
nop
nop
nop
sub $59666, %rsi
lea addresses_D_ht+0xe2b1, %rsi
and $56442, %rdi
movl $0x61626364, (%rsi)
xor %r9, %r9
lea addresses_A_ht+0x7f7f, %r10
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %r10
vmovaps %ymm4, (%r10)
nop
nop
xor $4501, %r15
lea addresses_UC_ht+0x11db1, %rdi
nop
nop
nop
nop
nop
sub $8095, %r13
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x65f1, %rsi
lea addresses_normal_ht+0x18dd1, %rdi
nop
nop
nop
nop
add $16831, %r8
mov $114, %rcx
rep movsb
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xa31, %rsi
mov $0x47de9c00000007b1, %rdi
nop
nop
inc %r12
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
and $7837, %rcx

// Faulty Load
mov $0x47de9c00000007b1, %rbx
xor $29996, %rbp
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'00': 9054, '16': 5524}
00 00 16 16 00 00 00 16 16 00 16 00 00 00 00 00 16 00 16 00 16 16 16 00 00 00 16 00 16 16 00 00 00 00 00 00 00 00 00 00 00 00 16 00 16 16 00 00 00 16 00 00 16 00 16 16 16 00 00 00 00 00 16 00 16 16 00 16 00 16 00 00 16 00 00 16 16 16 16 16 00 16 00 00 00 16 16 00 00 00 00 16 00 00 00 16 16 00 00 16 16 00 00 00 16 00 00 00 00 00 16 16 16 00 16 16 00 00 16 00 00 00 00 00 00 00 16 00 00 16 00 16 16 00 16 16 16 00 16 16 16 00 00 16 00 16 16 00 00 00 16 00 00 16 16 00 00 16 00 16 16 00 16 16 16 00 16 16 16 00 00 00 16 16 16 00 16 00 00 16 16 00 16 16 00 00 00 00 00 16 16 00 00 00 16 16 00 16 00 16 00 00 00 16 16 00 00 16 00 00 00 00 16 00 00 16 16 00 16 00 16 00 00 00 00 00 00 00 00 00 16 00 00 00 00 16 00 00 16 00 00 00 00 16 00 16 16 16 16 00 00 16 16 00 00 00 16 00 16 16 16 00 00 00 00 00 00 16 16 00 16 00 16 00 00 00 16 00 00 16 00 00 00 00 00 16 00 16 00 00 00 16 16 16 00 00 16 00 16 16 00 16 00 00 00 00 00 16 00 16 00 00 16 00 00 16 16 00 00 16 00 00 00 00 00 00 00 00 16 00 16 00 00 00 00 16 00 00 16 00 00 00 00 16 00 00 00 00 00 16 00 00 16 00 00 00 00 16 00 16 16 16 00 16 00 00 00 16 16 00 00 00 00 00 16 00 00 00 16 00 00 00 00 16 00 16 00 00 16 16 00 00 00 16 00 00 16 16 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 16 16 16 16 00 16 16 00 16 00 16 16 16 00 00 16 16 00 00 00 00 00 00 16 16 00 00 00 16 16 00 00 16 16 16 00 00 00 00 00 16 16 00 16 00 00 00 00 00 16 16 00 00 00 00 00 16 00 00 00 16 16 00 00 00 00 00 00 00 16 16 00 16 16 16 16 00 00 00 16 16 16 00 00 00 16 16 16 00 00 00 00 00 00 16 16 16 00 00 16 16 16 16 16 00 16 16 16 16 16 00 00 00 16 16 16 00 16 16 00 16 16 00 16 16 16 00 00 16 00 16 00 16 16 00 00 16 00 16 00 00 16 00 00 00 00 16 16 00 00 16 00 00 16 16 00 00 16 16 00 16 00 16 16 00 00 16 00 00 00 00 16 16 00 16 00 00 00 16 00 00 16 00 00 00 16 00 00 00 00 00 00 00 00 16 00 16 00 00 16 00 00 16 00 16 00 00 16 16 00 00 00 00 00 00 00 16 00 00 16 00 16 00 00 00 16 00 00 16 16 00 00 16 16 16 16 16 16 00 16 00 00 00 00 00 00 00 00 00 16 16 16 00 00 16 16 16 00 00 16 00 16 00 00 16 16 00 16 00 00 00 16 16 00 16 16 16 16 16 16 00 16 00 16 16 00 00 16 00 00 00 16 16 16 16 00 00 16 16 00 00 00 00 00 16 00 00 16 00 00 16 16 00 00 00 00 00 00 16 00 00 00 16 00 16 00 16 00 16 00 00 00 16 00 00 00 00 00 00 16 16 16 00 00 16 00 00 16 16 00 00 16 00 00 16 16 00 00 00 00 16 16 00 00 16 00 16 16 16 16 00 16 16 00 16 00 16 16 00 00 16 16 16 00 00 00 00 16 00 16 16 00 00 16 16 16 16 00 16 00 16 00 16 16 00 00 16 00 16 16 00 00 00 00 00 00 16 16 00 00 16 16 00 00 16 16 00 00 00 00 00 00 16 16 00 16 00 00 00 16 00 00 16 00 16 16 00 16 00 16 00 16 00 16 16 00 16 16 00 00 16 16 00 16 16 00 00 00 00 16 00 16 16 00 00 00 00 16 00 16 00 16 00 00 00 16 00 16 00 00 16 16 00 16 16 16 00 16 00 16 00 00 00 16 00 00 00 16 16 16 16 00 16 16 00 00 16 16 00 00 16 16 16 00 00 00 00 00 16 00 16 00 16 00 00 16 16 00 00 16 00 00 00 16 00 16 00 00 16 16 00 00 00 00 16 00 16 16 00 00 16 00 00 00 00 16 16 16 00 00 16 00 00 00 00 00 00 00 16 00 00 16
*/
