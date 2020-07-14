.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19124, %rsi
lea addresses_WC_ht+0x39a4, %rdi
nop
nop
xor $42712, %r15
mov $98, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xbda4, %r8
clflush (%r8)
sub $2223, %r15
movb (%r8), %r12b
sub %rdi, %rdi
lea addresses_A_ht+0x1665c, %rcx
nop
nop
nop
and $288, %rdx
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
add %r12, %r12
lea addresses_normal_ht+0x111a4, %r15
nop
nop
nop
nop
nop
inc %rsi
mov (%r15), %ecx
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x5ba4, %r12
add %rdi, %rdi
mov (%r12), %si
nop
nop
nop
xor $54210, %rsi
lea addresses_D_ht+0x135a4, %rdi
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
add $3229, %r8
lea addresses_WT_ht+0x1b9a4, %rdx
nop
nop
nop
nop
nop
add $20439, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
cmp $30335, %rcx
lea addresses_WC_ht+0xefa4, %rdi
xor $16742, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %rdi
vmovaps %ymm6, (%rdi)
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x51a4, %rdx
and %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0xc6fe, %rdx
nop
nop
nop
nop
add %rsi, %rsi
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x185a4, %rsi
lea addresses_normal_ht+0x1844, %rdi
nop
nop
nop
sub $25269, %r13
mov $39, %rcx
rep movsl
nop
nop
nop
nop
cmp $6546, %r8
lea addresses_normal_ht+0xc62d, %r8
add $20021, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r8)
and $43718, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_PSE+0x131a4, %r12
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r12)
nop
nop
xor %rax, %rax

// Load
lea addresses_WT+0xdd08, %rbp
nop
nop
inc %r8
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
xor $28378, %r15

// Store
lea addresses_PSE+0x1e2a4, %rbp
nop
xor %r12, %r12
movw $0x5152, (%rbp)
nop
dec %rax

// Load
lea addresses_PSE+0x131a4, %rax
nop
inc %rbp
movb (%rax), %r12b
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0x1e124, %r15
cmp $33515, %rdi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
and $45639, %r12

// Store
lea addresses_A+0x1cc74, %rax
nop
nop
nop
nop
cmp $30221, %rbx
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0xa21c, %rdi
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movaps %xmm3, (%rdi)
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_PSE+0x131a4, %rdi
nop
xor $22173, %rax
mov (%rdi), %r8w
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': True, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
