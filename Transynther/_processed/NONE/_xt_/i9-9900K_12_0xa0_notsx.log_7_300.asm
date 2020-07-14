.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rsi
lea addresses_normal_ht+0x1e6, %r11
nop
nop
nop
nop
add $23259, %rsi
movb $0x61, (%r11)
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1b966, %rcx
nop
nop
sub %r13, %r13
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WT+0x16136, %rdi
nop
nop
inc %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
and $32330, %r12

// Load
lea addresses_A+0x25a6, %r12
inc %rdx
vmovaps (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
add $39583, %rdi

// Faulty Load
lea addresses_RW+0x1c766, %r13
clflush (%r13)
nop
xor %rcx, %rcx
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'32': 7}
32 32 32 32 32 32 32
*/
