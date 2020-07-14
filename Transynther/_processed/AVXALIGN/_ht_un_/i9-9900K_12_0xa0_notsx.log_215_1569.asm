.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3c4e, %r9
nop
nop
nop
nop
dec %r13
mov (%r9), %si
sub $61333, %r11
lea addresses_A_ht+0xa2ee, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
dec %r15
lea addresses_WT_ht+0xde, %r11
nop
nop
nop
nop
cmp $10899, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
nop
add $8314, %r9
lea addresses_WT_ht+0x10ede, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r9
movaps %xmm0, (%r9)
add $47627, %r11
lea addresses_UC_ht+0xe5f2, %r15
nop
nop
nop
nop
nop
dec %r11
mov (%r15), %r13
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x17fae, %r15
nop
nop
nop
nop
add %r13, %r13
mov (%r15), %r11
lfence
lea addresses_D_ht+0x3d1e, %rsi
lea addresses_UC_ht+0xa2ce, %rdi
clflush (%rdi)
add %rbp, %rbp
mov $93, %rcx
rep movsw
and %r13, %r13
lea addresses_A_ht+0x1810e, %rsi
lea addresses_UC_ht+0xd05e, %rdi
clflush (%rdi)
nop
cmp %r11, %r11
mov $123, %rcx
rep movsb
nop
cmp $58083, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rdx

// Store
mov $0x7dc4a40000000a3e, %r10
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x91fe, %r9
nop
cmp %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
xor $28675, %r10

// Store
lea addresses_D+0x1255e, %r11
inc %rdx
movb $0x51, (%r11)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
and $37884, %rdx

// Faulty Load
mov $0xdde, %r14
nop
nop
nop
nop
nop
and $63302, %r15
vmovaps (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'8b': 1, '46': 194, '45': 20}
46 46 46 46 46 46 46 46 8b 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 45 45 46 46 46 46 46 45 46 45 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
