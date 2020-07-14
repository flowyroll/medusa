.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x422f, %r10
nop
nop
dec %rdi
movb $0x61, (%r10)
nop
nop
inc %r9
lea addresses_A_ht+0x1c76f, %rsi
lea addresses_WC_ht+0x1baf, %rdi
clflush (%rsi)
clflush (%rdi)
nop
add %r8, %r8
mov $119, %rcx
rep movsw
nop
xor $23252, %rcx
lea addresses_normal_ht+0x10707, %rsi
lea addresses_D_ht+0x1222f, %rdi
nop
nop
nop
nop
nop
cmp $45534, %r8
mov $116, %rcx
rep movsq
nop
inc %rcx
lea addresses_normal_ht+0x212f, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
movb (%rdi), %cl
nop
nop
nop
nop
nop
cmp $1640, %r8
lea addresses_UC_ht+0x16bcf, %rsi
lea addresses_UC_ht+0x7d2f, %rdi
and $64866, %r10
mov $35, %rcx
rep movsb
nop
nop
nop
nop
cmp $51635, %rsi
lea addresses_UC_ht+0x1d02f, %r9
nop
cmp $22231, %r10
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x7faf, %rdi
add $56055, %rcx
mov (%rdi), %r10w
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1c82f, %r15
nop
sub %r10, %r10
mov (%r15), %esi
nop
nop
nop
xor $16605, %rdi
lea addresses_UC_ht+0x1320f, %r8
nop
nop
cmp $52419, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
sub $48315, %r9
lea addresses_D_ht+0x3c2f, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%r8), %r10b
nop
nop
nop
cmp $17919, %rdi
lea addresses_D_ht+0x1732a, %rsi
nop
nop
cmp $9970, %rcx
mov (%rsi), %r10
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x193ef, %r10
add %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
add %r8, %r8
lea addresses_WT_ht+0x4c2f, %r15
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r15)
sub %r15, %r15
lea addresses_WT_ht+0x88af, %rdi
nop
and $53492, %r9
mov (%rdi), %si
xor $19450, %rcx
lea addresses_normal_ht+0x1a02f, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r8), %ecx
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1795d, %r15
nop
nop
nop
nop
nop
xor $12219, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
add %r12, %r12

// Load
lea addresses_RW+0x1c0cb, %r12
nop
nop
sub %r14, %r14
mov (%r12), %rdx
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WT+0xda0f, %r15
nop
nop
nop
dec %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
mov $0x31c8b4000000002f, %rcx
nop
nop
nop
nop
inc %rdx
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_PSE'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
