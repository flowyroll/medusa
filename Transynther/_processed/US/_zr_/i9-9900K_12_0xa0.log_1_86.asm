.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19b22, %rsi
lea addresses_UC_ht+0x1b102, %rdi
nop
nop
nop
nop
inc %r14
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x6e42, %r8
nop
nop
nop
nop
cmp $28685, %rax
movb (%r8), %cl
nop
nop
nop
nop
and $50464, %r8
lea addresses_D_ht+0x9d82, %rdi
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rdi
vmovaps %ymm0, (%rdi)
nop
nop
nop
nop
nop
sub $55441, %rsi
lea addresses_normal_ht+0xafc2, %rsi
lea addresses_D_ht+0x3dea, %rdi
nop
nop
inc %r12
mov $9, %rcx
rep movsb
nop
nop
nop
cmp $60005, %rdi
lea addresses_WC_ht+0xddc2, %r15
nop
nop
nop
nop
nop
xor $5156, %rax
mov (%r15), %si
nop
cmp $29728, %rsi
lea addresses_WC_ht+0x169c2, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r15, %r15
mov (%rdi), %eax
inc %r12
lea addresses_WT_ht+0xf882, %rdi
nop
nop
nop
nop
and %rcx, %rcx
movb (%rdi), %al
sub %rdi, %rdi
lea addresses_UC_ht+0x1bc9a, %rsi
lea addresses_A_ht+0x185c2, %rdi
nop
mfence
mov $101, %rcx
rep movsb
nop
nop
sub $49623, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x46c2, %r14
nop
nop
nop
lfence
movb $0x51, (%r14)
nop
nop
add $7866, %rax

// Store
lea addresses_UC+0x1d442, %rsi
nop
nop
sub $49183, %r14
movw $0x5152, (%rsi)

// Exception!!!
mov (0), %rcx
nop
nop
nop
cmp $25082, %rbp

// Store
lea addresses_A+0xbdc2, %rcx
clflush (%rcx)
nop
nop
inc %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
cmp $44905, %r15

// Faulty Load
lea addresses_US+0x161c2, %rbp
clflush (%rbp)
and %r14, %r14
movb (%rbp), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
