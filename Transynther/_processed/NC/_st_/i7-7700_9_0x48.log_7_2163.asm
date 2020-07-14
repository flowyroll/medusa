.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc95d, %rsi
lea addresses_WC_ht+0x1567a, %rdi
nop
nop
nop
nop
inc %r15
mov $121, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x917a, %r10
nop
nop
nop
nop
nop
inc %r14
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
lfence
lea addresses_WT_ht+0x1877a, %r14
nop
nop
nop
nop
nop
cmp $6275, %r15
movl $0x61626364, (%r14)
nop
nop
nop
xor $44682, %r15
lea addresses_A_ht+0x3e7a, %rsi
lea addresses_D_ht+0x14a7a, %rdi
nop
nop
nop
nop
nop
xor $27408, %r12
mov $99, %rcx
rep movsl
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1d67a, %rbp
nop
nop
nop
nop
sub $37234, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1027a, %rcx
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rcx)

// Exception!!!
nop
nop
mov (0), %r15
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x18fea, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add $51543, %rdi

// Store
lea addresses_normal+0x1090f, %r15
clflush (%r15)
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x63fddf0000000c7a, %r14
nop
nop
and %rdi, %rdi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
and %r14, %r14

// Load
lea addresses_RW+0x1427a, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %r15w
cmp $60082, %rcx

// Store
lea addresses_A+0x845d, %r15
cmp $6752, %r9
movl $0x51525354, (%r15)
nop
nop
nop
xor $17104, %r14

// Store
lea addresses_normal+0x11d7a, %r14
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r14)
cmp $58107, %rcx

// Load
mov $0x79b941000000027a, %rbx
inc %rsi
mov (%rbx), %r14w
nop
xor $32674, %rdi

// Faulty Load
mov $0x79b941000000027a, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rsi), %r15w
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
