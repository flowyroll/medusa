.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14d2c, %rsi
lea addresses_WC_ht+0x1532c, %rdi
inc %r12
mov $50, %rcx
rep movsq
xor %rcx, %rcx
lea addresses_WC_ht+0x7986, %r8
dec %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %r8
vmovntdq %ymm5, (%r8)
sub %rsi, %rsi
lea addresses_D_ht+0x11aac, %r8
nop
nop
nop
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
xor $64084, %r13
lea addresses_WT_ht+0x3c2c, %rsi
lea addresses_D_ht+0x15188, %rdi
nop
nop
nop
nop
nop
cmp $33644, %rdx
mov $123, %rcx
rep movsb
nop
nop
nop
nop
cmp $47750, %r13
lea addresses_normal_ht+0x1112c, %rcx
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
xor $53118, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbp

// Store
lea addresses_normal+0x17e2c, %r13
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%r13)
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_WC+0xccac, %r10
clflush (%r10)
add %r8, %r8
movl $0x51525354, (%r10)
nop
add %r8, %r8

// Load
lea addresses_PSE+0xf2c, %r8
nop
cmp %r13, %r13
mov (%r8), %r12d
nop
nop
nop
dec %r8

// Store
lea addresses_normal+0xce88, %r8
nop
nop
nop
nop
nop
sub $4294, %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_A+0xc26c, %r10
nop
nop
nop
add %rax, %rax
movw $0x5152, (%r10)
nop
nop
xor $64324, %r8

// Load
lea addresses_D+0x1860a, %r10
nop
sub $2796, %rax
vmovntdqa (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
sub $1495, %r8

// Store
lea addresses_WT+0x1692c, %r12
nop
sub $50520, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
sub $16742, %rax

// Faulty Load
lea addresses_WT+0xd12c, %r8
nop
dec %r12
mov (%r8), %eax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'39': 1}
39
*/
