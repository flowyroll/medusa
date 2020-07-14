.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1170f, %rdx
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x10e6f, %rax
nop
nop
and $55420, %r9
movl $0x61626364, (%rax)
nop
nop
nop
nop
xor $520, %rdx
lea addresses_D_ht+0x153bf, %r9
nop
nop
nop
nop
nop
sub $6836, %rax
mov (%r9), %si
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1066f, %rsi
lea addresses_D_ht+0xaf9f, %rdi
nop
nop
nop
nop
nop
xor $65462, %r9
mov $73, %rcx
rep movsl
nop
add %r15, %r15
lea addresses_WC_ht+0x1db6f, %r12
nop
nop
nop
nop
sub $1446, %rax
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r9
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1c25e, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r10)
nop
nop
inc %rdi
lea addresses_WT_ht+0xbc4f, %rdi
nop
inc %r9
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
cmp %r9, %r9
lea addresses_A_ht+0xee6f, %r9
clflush (%r9)
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x11c6f, %rsi
lea addresses_WC_ht+0x5cef, %rdi
nop
nop
add $37093, %r10
mov $18, %rcx
rep movsb
nop
cmp %r9, %r9
lea addresses_UC_ht+0xb7af, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rdx)
nop
and $49456, %r15
lea addresses_UC_ht+0x1ca8b, %rsi
lea addresses_A_ht+0x3ebf, %rdi
and %rax, %rax
mov $118, %rcx
rep movsq
nop
nop
xor $30274, %r10
lea addresses_A_ht+0x1956f, %rdi
nop
add %r12, %r12
mov (%rdi), %edx
dec %r15
lea addresses_UC_ht+0x19433, %rsi
lea addresses_WT_ht+0x1286f, %rdi
nop
nop
and %r12, %r12
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xb66f, %rdi
nop
nop
nop
cmp $57308, %r12
mov (%rdi), %r9d
nop
add $37964, %r15
lea addresses_normal_ht+0x166f, %r9
nop
add $43972, %r15
movw $0x6162, (%r9)
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x23482c0000000def, %r8
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%r8)
nop
nop
cmp $51356, %r13

// Store
lea addresses_WC+0x66f, %rbx
nop
nop
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
xor $64476, %rbp

// Store
lea addresses_normal+0x5e3f, %rdi
nop
nop
xor $17795, %r13
movw $0x5152, (%rdi)
nop
nop
add $5195, %r13

// Load
lea addresses_WT+0x1166f, %rdi
nop
nop
add %rbx, %rbx
mov (%rdi), %edx
and %rdx, %rdx

// Store
lea addresses_WC+0x66f, %rdi
nop
nop
xor $12866, %rbx
movb $0x51, (%rdi)
nop
nop
nop
sub $23753, %r9

// Faulty Load
lea addresses_WC+0x66f, %r9
nop
nop
nop
dec %r13
movb (%r9), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'54': 383, '2c': 1, '88': 1, '51': 21444}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 54 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 54 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
