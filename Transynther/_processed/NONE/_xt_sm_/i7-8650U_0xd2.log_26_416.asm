.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d652, %rdi
nop
nop
sub %r11, %r11
movw $0x6162, (%rdi)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xadd2, %rsi
lea addresses_normal_ht+0xd6d2, %rdi
nop
nop
nop
nop
dec %r9
mov $62, %rcx
rep movsq
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x175e2, %r13
nop
nop
nop
nop
and %r15, %r15
mov (%r13), %rsi
nop
nop
nop
nop
nop
cmp $26918, %r9
lea addresses_UC_ht+0xae92, %r9
clflush (%r9)
nop
nop
nop
nop
and $38445, %rsi
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1e92a, %rsi
lea addresses_UC_ht+0x1e9f2, %rdi
nop
nop
sub %r14, %r14
mov $122, %rcx
rep movsq
nop
cmp $55240, %r14
lea addresses_WT_ht+0x9ea2, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rcx)
nop
and %r13, %r13
lea addresses_WC_ht+0x2892, %r9
clflush (%r9)
nop
xor %r13, %r13
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1a592, %r14
inc %rcx
movb $0x61, (%r14)
nop
nop
nop
nop
xor $26934, %r13
lea addresses_WC_ht+0x7d92, %rsi
nop
nop
nop
sub $21072, %r13
mov (%rsi), %cx
nop
xor %r14, %r14
lea addresses_A_ht+0x9be5, %r13
nop
nop
nop
nop
nop
and $13389, %r14
mov (%r13), %r15
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1a82, %r14
nop
dec %r11
mov (%r14), %r9
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x1c092, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
and $47725, %rdi
lea addresses_WT_ht+0x186b2, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
and $10738, %rdi
lea addresses_D_ht+0x1a2d2, %rsi
lea addresses_WC_ht+0x142c4, %rdi
nop
nop
and $33654, %r9
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax

// Load
lea addresses_PSE+0xd533, %r13
nop
nop
sub $41342, %r9
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_UC+0x9492, %r9
nop
nop
nop
nop
add %r8, %r8
mov (%r9), %r13
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x11c92, %r15
clflush (%r15)
sub $5307, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
and $58600, %r15

// Load
lea addresses_normal+0x1e492, %r15
clflush (%r15)
nop
inc %r9
mov (%r15), %r13w
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_US+0x11892, %r15
nop
nop
nop
and $17365, %r8
movb $0x51, (%r15)

// Exception!!!
nop
nop
mov (0), %r13
nop
nop
nop
nop
sub $21721, %r13

// Faulty Load
lea addresses_WC+0x11c92, %r15
clflush (%r15)
cmp %r8, %r8
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'58': 26}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
