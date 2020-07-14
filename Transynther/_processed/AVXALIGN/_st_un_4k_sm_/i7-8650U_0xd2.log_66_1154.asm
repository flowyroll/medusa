.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe945, %rbx
cmp %r10, %r10
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x15d45, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
movb (%rcx), %r9b
nop
nop
nop
nop
nop
xor $11532, %r15
lea addresses_D_ht+0x1cdc5, %r10
cmp %r13, %r13
mov (%r10), %r9d
nop
nop
add $34906, %r13
lea addresses_A_ht+0x1d2c5, %r15
nop
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
nop
add $16648, %rbx
lea addresses_A_ht+0x8925, %rbx
nop
and $49556, %rcx
mov (%rbx), %r13w
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1485, %rsi
lea addresses_D_ht+0x19545, %rdi
inc %r15
mov $85, %rcx
rep movsl
and $16168, %rbx
lea addresses_A_ht+0xbd15, %r15
nop
nop
nop
nop
nop
cmp $45798, %rbp
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1e199, %rsi
lea addresses_WC_ht+0x11a2b, %rdi
nop
nop
nop
sub $20193, %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $45084, %rdi
lea addresses_normal_ht+0x12de5, %r13
nop
inc %rsi
mov (%r13), %bp
nop
sub $17499, %rsi
lea addresses_normal_ht+0x7ded, %rsi
lea addresses_UC_ht+0x2d45, %rdi
nop
nop
nop
sub %r13, %r13
mov $62, %rcx
rep movsb
nop
nop
nop
cmp $13099, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Load
lea addresses_WC+0x11d4d, %r9
nop
nop
nop
nop
inc %r10
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0x12545, %r9
nop
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r9)
nop
nop
nop
inc %r9

// Store
lea addresses_RW+0x19545, %r9
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
dec %rsi

// Store
lea addresses_UC+0x1641d, %r8
xor $21553, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
add $1409, %r10

// Store
lea addresses_WC+0x1de65, %rdx
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_WC+0x12545, %r11
nop
dec %rsi
mov (%r11), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'58': 58, '80': 8}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 80 58 58 58 80 58 58 58 58 58 80 58 58 80 80 58 58 58 58 58 80 58 58 58 58 58 58 58
*/
