.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18d61, %r9
clflush (%r9)
nop
nop
nop
xor $43432, %rbx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
and %r9, %r9
lea addresses_normal_ht+0x13ae1, %rsi
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rsi
vmovaps %ymm1, (%rsi)
nop
xor $54231, %rbx
lea addresses_WC_ht+0x1a921, %rsi
lea addresses_UC_ht+0x13e61, %rdi
nop
dec %r15
mov $69, %rcx
rep movsb
lfence
lea addresses_normal_ht+0xe241, %r14
nop
cmp $7282, %r15
mov (%r14), %si
nop
nop
nop
nop
nop
add $62052, %r9
lea addresses_D_ht+0x336f, %rdi
nop
nop
xor $22613, %rcx
movb $0x61, (%rdi)
nop
nop
sub $47241, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x6641, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
cmp $38859, %rdi

// Store
lea addresses_normal+0x1e01, %r8
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r8)
nop
cmp $26047, %rdi

// Store
lea addresses_WC+0x3dc1, %r8
cmp $35962, %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0x16241, %rdi
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
cmp $61547, %rdi

// Store
lea addresses_RW+0x1aa41, %r14
nop
and $7520, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
cmp $20859, %rbp

// Load
lea addresses_WC+0xa8c9, %rdx
and $15214, %rdi
movb (%rdx), %r8b
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x16241, %rsi
nop
nop
nop
and $53789, %r14
movb $0x51, (%rsi)
nop
nop
nop
nop
add $14000, %r8

// Faulty Load
lea addresses_RW+0x16241, %r14
nop
nop
inc %rbp
movb (%r14), %dl
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}}
{'51': 8}
51 51 51 51 51 51 51 51
*/
