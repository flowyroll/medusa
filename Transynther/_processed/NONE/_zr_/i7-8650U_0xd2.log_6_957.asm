.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xea51, %rbp
clflush (%rbp)
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x13cca, %rsi
lea addresses_WC_ht+0x9c51, %rdi
clflush (%rdi)
nop
nop
nop
add %r12, %r12
mov $81, %rcx
rep movsl
nop
inc %rsi
lea addresses_A_ht+0xb7ac, %r12
xor %rcx, %rcx
movl $0x61626364, (%r12)
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1a051, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r12), %rdx
nop
nop
cmp $47725, %r8
lea addresses_UC_ht+0xb751, %rdx
clflush (%rdx)
nop
nop
nop
mfence
movb (%rdx), %cl
xor %rdx, %rdx
lea addresses_normal_ht+0xf8d1, %rbp
nop
sub $15946, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm7, (%rbp)
add %rcx, %rcx
lea addresses_UC_ht+0x5a51, %rdx
nop
nop
nop
nop
nop
sub $14300, %rdi
movb $0x61, (%rdx)
nop
xor $15892, %rdx
lea addresses_WT_ht+0x15451, %rcx
nop
nop
xor $30066, %r8
movb $0x61, (%rcx)
nop
cmp $24632, %rsi
lea addresses_normal_ht+0xb245, %r12
nop
nop
xor $15054, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %r12
vmovaps %ymm6, (%r12)
nop
nop
nop
add $2669, %rdx
lea addresses_D_ht+0x3451, %rdx
nop
sub $7939, %rcx
movl $0x61626364, (%rdx)
nop
nop
dec %rdi
lea addresses_WC_ht+0x114d, %rsi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%rsi), %rbp
nop
add $34921, %rdi
lea addresses_WC_ht+0x18011, %rdi
nop
cmp $50839, %r8
movb $0x61, (%rdi)
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rdi
push %rdx

// Load
lea addresses_WT+0x19551, %r14
clflush (%r14)
nop
nop
nop
xor %r12, %r12
mov (%r14), %rdi
nop
nop
nop
nop
nop
sub $25648, %r12

// Store
lea addresses_D+0x2a51, %rax
nop
nop
cmp $24381, %r15
movl $0x51525354, (%rax)
nop
inc %r12

// Load
lea addresses_WC+0x9e51, %r15
nop
nop
nop
nop
and %rdx, %rdx
movb (%r15), %r12b
nop
nop
inc %r14

// Store
lea addresses_UC+0x9051, %r10
nop
nop
cmp $30596, %rax
movw $0x5152, (%r10)
nop
nop
sub $59961, %rax

// Store
lea addresses_normal+0x13851, %rdx
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdx)
cmp $48575, %r14

// Store
lea addresses_D+0x1b5fd, %rax
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%rax)
cmp %r10, %r10

// Load
mov $0x2d1, %r15
nop
nop
xor %rdi, %rdi
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_A+0x11c51, %r15
nop
nop
nop
nop
nop
add $50079, %rdx
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
