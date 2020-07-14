.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13911, %rsi
lea addresses_D_ht+0x12cfd, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r13
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $8585, %rbp
lea addresses_D_ht+0xf36d, %rsi
lea addresses_WT_ht+0x88bd, %rdi
clflush (%rsi)
nop
nop
nop
add $21142, %r15
mov $83, %rcx
rep movsw
nop
nop
nop
dec %r13
lea addresses_A_ht+0x17b7d, %rbp
clflush (%rbp)
nop
nop
xor $8699, %r15
mov (%rbp), %r13d
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x35b3, %rsi
lea addresses_A_ht+0x1e1fd, %rdi
nop
nop
sub $29309, %rdx
mov $61, %rcx
rep movsl
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xd7fd, %rsi
lea addresses_WC_ht+0xbffd, %rdi
nop
nop
add $10264, %rbx
mov $75, %rcx
rep movsb
add %rdx, %rdx
lea addresses_WC_ht+0x303d, %rsi
lea addresses_D_ht+0x9bfd, %rdi
cmp %rbp, %rbp
mov $21, %rcx
rep movsb
nop
nop
nop
inc %rbx
lea addresses_D_ht+0xa8d5, %rbx
nop
nop
dec %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1e351, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
add $30895, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Load
lea addresses_A+0x15c3d, %r8
clflush (%r8)
nop
nop
add $2529, %rcx
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
add $3778, %r14

// Load
lea addresses_PSE+0x1cffd, %r15
nop
nop
nop
nop
nop
dec %rcx
mov (%r15), %r13w
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x162fd, %r8
nop
nop
nop
nop
nop
inc %rbp
movw $0x5152, (%r8)
nop
xor %r14, %r14

// Load
lea addresses_UC+0xdffd, %r14
clflush (%r14)
nop
nop
sub %rax, %rax
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8

// Exception!!!
mov (0), %rax
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_D+0x19bfd, %r13
sub %rax, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add $4332, %rax

// Store
mov $0x38d, %rbp
nop
nop
nop
nop
nop
add $5230, %r13
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WC+0x43fd, %rax
nop
nop
nop
nop
sub %r8, %r8
mov (%rax), %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'2a': 1, '3c': 33, '9e': 1, 'ce': 1, '8c': 1, 'e2': 3, '44': 330, 'de': 1, '1a': 1, '72': 2, 'ac': 1, 'ff': 7648, '20': 2, 'dc': 2, '70': 232, 'fa': 1, '53': 1686, 'fc': 3, 'dd': 31, 'c2': 3, 'ea': 2, '6a': 4, 'ec': 2, 'a8': 1, '54': 1, 'e4': 1, '8e': 2, '42': 1, 'd0': 1, '04': 1, 'e6': 2, 'e0': 1, '4c': 2, 'ca': 1, '32': 1, 'f0': 4, 'f4': 1, 'a2': 1, 'ee': 3, '80': 1, '0c': 1, 'd6': 2, 'f8': 2, 'f2': 1, '0a': 2, 'd4': 1, '00': 4912, 'c6': 1, 'b0': 1, '47': 23, '9c': 1, '26': 1, '01': 64, '48': 197, '46': 3380, '6e': 1, '5e': 1, 'c4': 1, '10': 1, '96': 1, '50': 1445}
53 46 00 00 ff 4c 20 ff 00 00 46 ff 50 ff 70 ff ff 01 46 53 ff 00 ff 00 ff 80 46 ff 50 ff 00 ff ff 00 46 46 ff 50 44 ff 00 ff ff 00 ff ff 46 46 00 53 00 00 ff 00 ff 00 9c 53 ff 00 ff 00 46 ff 46 53 ff 50 ff ff 00 00 46 46 00 d4 ff 50 ff 00 ff 00 ff 00 53 46 ff 46 ff 50 00 46 00 ff 46 ff 50 ff 50 ff 00 ff 00 53 ff 46 46 ff 46 ff 00 ff 00 46 00 46 ff ff ff 00 ff 00 ff 00 ff ff 53 ff 00 ff ff 53 ff 46 53 50 48 ff 50 ff 00 46 00 ff 46 ff 00 46 46 ff 00 ff 00 ff 01 44 ff 00 ff 00 ff ff ff 00 ff ff 50 ff ff 00 ff 00 46 53 44 00 ff ff 00 ff 00 46 ff 50 ff ff 00 46 ff 00 53 ff 00 00 46 ff 00 ff 00 46 00 53 46 ff 50 ff ff 00 ff 00 00 53 00 00 46 ff 00 46 00 46 ff 00 46 ff 50 ff 46 00 ff 00 53 ff 46 ff 00 ff 00 46 46 46 46 50 ff 53 46 00 ff 53 53 00 ff 00 ff 50 ff 00 00 50 46 46 00 46 46 46 53 ff ff 00 00 53 ff 50 ff 00 53 46 44 00 ff 00 00 00 ff 00 ff 00 ff ff 00 ff ff ff 50 ff 70 46 ff 47 ff 00 ff 00 ff 46 00 ff 53 ff 00 46 ff 00 00 53 53 ff ff 53 ff 46 ff 00 ff 00 00 ff 50 ff 46 ff 00 ff 00 ff 00 50 00 ff 00 44 46 ff 50 00 53 ff 00 46 ff 00 00 ff 50 ff 00 00 ff 70 00 46 ff 00 ff 46 53 44 53 00 ff 53 ff 00 ff 00 ff 00 46 46 46 ff ff 00 46 46 00 53 ff 00 44 ff 00 00 ff 00 53 ff 46 ff 00 00 ee 46 46 44 ff 50 ff 70 ff ff 46 ff 46 53 46 53 ff 00 ff 01 ff ff ff 00 46 ff 00 ff 00 46 ff 00 00 ff ff 53 46 ff 00 00 ff ff 46 46 ff 50 ff 50 46 50 00 ff 50 ff 00 ff 00 ff 00 46 53 46 ff ff 00 46 ff 00 46 46 ff 50 ff ff 70 44 53 00 ff 00 46 00 46 46 00 00 50 00 46 ff 00 ff 46 ff ff 50 ff ff 00 ff 00 ff 50 ff 00 46 46 ff 00 48 ff ff 50 53 00 ff 00 46 53 00 ff 50 ff 00 ff 46 ff ff 50 ff 50 53 ff 00 46 53 46 ff 50 ff 46 46 ff 00 ff 00 ff 53 46 46 46 48 44 53 ff 50 46 ff 00 ff 00 ff ff 00 ff 00 ff 00 46 53 46 46 46 ff 46 46 53 46 ff 00 46 ff 00 ff 50 ff 50 ff 00 ff 50 53 ff 00 ff 50 ff 46 46 50 ff ff dd 53 ff 50 00 ff ff 53 ff 50 00 ff 50 ff 50 44 ff 50 ff ff 00 ff 00 8c ff 50 ff 00 46 ff 50 ff 00 ff 00 00 ff 00 00 46 ff ff ff 00 ff ff 46 53 ff 53 53 ff 00 ff 53 ff 00 53 ff 46 ff 00 ff ff 00 ff ff 70 53 53 46 ff 00 46 00 ff 46 ff 48 ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 53 ff 00 ff 00 ff 00 00 46 46 ff 00 00 53 46 ff 00 46 ff 46 ff 00 ff 00 50 ff 00 ff 53 ff 00 ff 00 46 00 ff 46 ff 50 46 ff 46 46 46 ff 50 46 ff 70 ff 00 46 ff 00 ff 50 ff 00 ff 50 46 ff 00 00 ff 00 53 46 46 46 ff 50 46 48 53 46 ff 46 46 ff 00 00 ff 46 ff 53 53 ff 00 ff 00 ff 53 ff 50 46 46 ff 50 ff 00 00 46 ff ff 00 ff 00 53 00 ff 46 ff 00 ff 50 46 ff 00 00 ff 00 53 ff 46 53 00 ff 50 46 53 46 ff 00 44 00 ff ff ff 46 46 46 ff 00 53 46 46 00 53 ff 00 ff 50 46 ff 00 ff 46 50 46 ff 00 ff 53 ff 00 ff 50 46 ff 00 46 ff ff 00 ff 53 ff 44 ff 50 53 ff a8 ff ff ff 50 48 00 53 53 46 44 ff ff 46 ff ff 50 46 ff 00 ff 00 ff 00 46 ff ff 00 46 ff ff 50 ff 00 46 00 3c 44 46 46 46 ff 70 ff 00 46 46 ff 00 ff 70 ff 46 50 ff 50 46 46 ff 00 ff 00 46 ff 00 53 00 53 ff 00 50 53 53 ff 50 ff ff 50 ff 00 00 ff 00 ff ff 00 ff 00 46 53 ff 00 ff 50 ff 00 ff 00 53 ff 00 53 ff 00 00 46 53 ff 00 ff ff ff 00 ff 48 ff 53 ff 00 46 ff 50 ff
*/
